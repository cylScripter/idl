#!/usr/bin/env bash
set -euo pipefail

# 用法：bash publish-openapi.sh training /path/to/trainingserver
# 可覆盖：OPENAPI_DIR、TEMPLATE_DIR、IDL_DIR、OPENAPI_REPO。
if [[ ${1:-} == --help || $# -ne 2 ]]; then
  cat <<'USAGE'
用法：bash publish-openapi.sh <IDL名称> <目标项目目录>
示例：bash publish-openapi.sh training ../trainingserver

IDL名称可带 .thrift 后缀，例如 training 或 training.thrift。
环境变量：
  IDL_DIR       默认脚本所在目录
  OPENAPI_DIR   默认 IDL_DIR/../openapi，不存在时自动克隆
  OPENAPI_REPO  默认 git@github.com:cylScripter/openapi.git
  TEMPLATE_DIR  默认 /Users/chenyinglin/project/kitex/client/standard2

执行会生成、编译、提交并推送 SDK，再修改目标项目 go.mod/go.sum。
使用当前 SDK 分支，不创建 tag，不强推，不提交目标项目。
USAGE
  if [[ ${1:-} == --help ]]; then exit 0; fi
  exit 1
fi

fail() { printf '错误：%s\n' "$*" >&2; exit 1; }
stage=准备
trap 'printf "阶段失败：%s（行 %s）。已成功推送的 SDK 不会自动撤回；请检查工作区后重试。\n" "$stage" "$LINENO" >&2' ERR

idl_name=${1%.thrift}
[[ $idl_name =~ ^[a-zA-Z0-9_-]+$ ]] || fail 'IDL名称只能包含字母、数字、下划线和连字符'
script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
idl_dir=$(cd "${IDL_DIR:-$script_dir}" && pwd)
project_dir=$(cd "$2" && pwd)
sdk_dir=${OPENAPI_DIR:-$idl_dir/../openapi}
template_dir=${TEMPLATE_DIR:-/Users/chenyinglin/project/kitex/client/standard2}
sdk_repo=${OPENAPI_REPO:-git@github.com:cylScripter/openapi.git}
module=github.com/cylScripter/openapi

for tool in git go kitex; do
  command -v "$tool" >/dev/null || fail "未安装 $tool"
done
[[ -f $idl_dir/$idl_name.thrift ]] || fail "IDL不存在：$idl_dir/$idl_name.thrift"
namespace=$(awk '$1 == "namespace" && $2 == "go" { gsub(/\./, "/", $3); print $3; exit }' "$idl_dir/$idl_name.thrift")
[[ $namespace =~ ^[a-zA-Z0-9_]+(/[a-zA-Z0-9_]+)*$ ]] || fail 'IDL缺少有效的namespace go'
[[ -d $template_dir ]] || fail "模板目录不存在：$template_dir"
template_dir=$(cd "$template_dir" && pwd)
[[ -f $project_dir/go.mod ]] || fail '目标目录不存在go.mod'
git -C "$project_dir" rev-parse --git-dir >/dev/null
[[ -z $(git -C "$project_dir" status --porcelain -- go.mod go.sum) ]] || fail '目标项目go.mod/go.sum有未提交修改，请先处理'

stage=准备SDK仓库
if [[ ! -e $sdk_dir ]]; then
  git clone "$sdk_repo" "$sdk_dir"
fi
sdk_dir=$(cd "$sdk_dir" && pwd)
[[ $sdk_dir != "$project_dir" && $sdk_dir != "$idl_dir" ]] || fail 'SDK、IDL和目标项目目录必须分开'
git -C "$sdk_dir" rev-parse --git-dir >/dev/null
[[ -z $(git -C "$sdk_dir" status --porcelain) ]] || fail 'SDK仓库有未提交修改，请先处理'
[[ -f $sdk_dir/go.mod ]] || fail 'SDK仓库不存在go.mod'
[[ $(cd "$sdk_dir" && go list -m) == "$module" ]] || fail "SDK模块必须是 $module"
branch=$(git -C "$sdk_dir" symbolic-ref --quiet --short HEAD) || fail 'SDK仓库处于detached HEAD状态'
git -C "$sdk_dir" fetch origin "$branch"
remote_commit=$(git -C "$sdk_dir" rev-parse FETCH_HEAD)
git -C "$sdk_dir" merge-base --is-ancestor HEAD "$remote_commit" || fail 'SDK有未推送提交或分叉，请先处理，避免顺带发布其他提交'
git -C "$sdk_dir" merge --ff-only "$remote_commit"

stage=生成并编译SDK
(
  cd "$sdk_dir"
  kitex -module "$module" -template-dir "$template_dir" -gen-path ./ \
    -I "$idl_dir" "$idl_dir/$idl_name.thrift"
  go mod tidy
  go build "./$namespace/..."
  git diff --check
)

stage=提交并推送SDK
(
  cd "$sdk_dir"
  if [[ -n $(git status --porcelain) ]]; then
    git add -A
    git commit -m "chore: regenerate $idl_name SDK"
  fi
  git push origin "HEAD:refs/heads/$branch"
)
commit=$(git -C "$sdk_dir" rev-parse HEAD)
printf 'SDK已推送：%s（%s）\n' "$commit" "$branch"

stage=更新目标项目依赖
(
  cd "$project_dir"
  go get "$module@$commit"
  go mod tidy
  replacement=$(go list -m -f '{{if .Replace}}{{.Replace.Path}}{{end}}' "$module")
  [[ -z $replacement ]] || fail "项目存在openapi replace，实际使用的是 $replacement，请处理后核验"
  version=$(go list -m -f '{{.Version}}' "$module")
  printf '\n更新完成：\n项目：%s\nSDK提交：%s\n依赖版本：%s\n' "$project_dir" "$commit" "$version"
  git diff -- go.mod go.sum
)
