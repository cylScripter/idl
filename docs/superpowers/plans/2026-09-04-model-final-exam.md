# ModelFinalExam 重设计实现计划

> **面向 AI 代理的工作者：** 必需子技能：使用 superpowers:subagent-driven-development（推荐）或 superpowers:executing-plans 逐任务实现此计划。步骤使用复选框（`- [ ]`）语法来跟踪进度。

**目标：** 按期末考试工作量表格重设计 `ModelFinalExam`，保留通用审计字段、`academic_year`、`semester` 和 `app_id`。

**架构：** 只修改 IDL 中的 `ModelFinalExam`，将表格业务列映射为教师、科目、班级、出卷/阅卷工作量、巡考/监考/考务场次和费用标准。复用项目已有的考试工作量字段命名，不增加表格之外的汇总字段。

**技术栈：** Apache Thrift IDL、CloudWeGo thriftgo 0.4.2。

---

### 任务 1：更新 ModelFinalExam 字段

**文件：**
- 修改：`/Users/chenyinglin/project/github.com/idl/education.thrift:3293-3315`
- 测试：不新增 `xxx_test.go`；使用 Thrift 解析和 diff 校验

- [ ] **步骤 1：替换旧业务字段**

保留通用字段和用户指定字段，并将 `ModelFinalExam` 调整为：

```thrift
struct ModelFinalExam {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string academic_year (go.tag='json:"academic_year" gorm:"column:academic_year"');
  6: string semester (go.tag='json:"semester" gorm:"column:semester"');
  7: string teacher_name (go.tag='json:"teacher_name" gorm:"column:teacher_name"'); // 教师姓名
  8: string exam_subject (go.tag='json:"exam_subject" gorm:"column:exam_subject"'); // 考试科目
  9: string class_name (go.tag='json:"class_name" gorm:"column:class_name"'); // 使用试卷班级
  10: i32 exam_workload (go.tag='json:"exam_workload" gorm:"column:exam_workload"'); // 出卷
  11: i32 scoring_workload (go.tag='json:"scoring_workload" gorm:"column:scoring_workload"'); // 阅卷
  12: i32 patrol_count (go.tag='json:"patrol_count" gorm:"column:patrol_count"'); // 巡考
  13: i32 supervision_count (go.tag='json:"supervision_count" gorm:"column:supervision_count"'); // 监考
  14: i32 exam_admin_count (go.tag='json:"exam_admin_count" gorm:"column:exam_admin_count"'); // 考务
  15: double fee_standard (go.tag='json:"fee_standard" gorm:"column:fee_standard"'); // 费用标准（元）
  16: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"');
}
```

- [ ] **步骤 2：检查格式和字段映射**

运行：

```bash
git diff --check
rg -n -A 18 '^struct ModelFinalExam' education.thrift
```

预期：无空白错误；结构只包含规格中的字段，旧的命题人、共享和阅卷状态字段已移除。

- [ ] **步骤 3：验证 Thrift 语法**

运行：

```bash
tmp_dir="$(mktemp -d)"
go run github.com/cloudwego/thriftgo@v0.4.2 -i . -g go -o "$tmp_dir" education.thrift
```

预期：命令成功退出并生成代码；临时目录仅用于验证，不纳入仓库。

- [ ] **步骤 4：确认最终变更范围**

运行：

```bash
git status --short
git diff -- education.thrift
```

预期：除已提交的规格/计划文档外，源码变更只有 `education.thrift` 中的 `ModelFinalExam`。
