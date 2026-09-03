# ModelFinalExam 重设计规格

## 范围

仅调整 `/Users/chenyinglin/project/github.com/idl/education.thrift` 中的 `ModelFinalExam`，不修改接口、请求结构或其他模型。

## 数据来源

参考文件：`/Users/chenyinglin/Downloads/期末考试工作量 (1).xlsx` 的 `Sheet1`。

表格字段为：教师姓名、考试科目、使用试卷班级、出卷、阅卷、巡考、监考、考务、费用标准（元）。附件没有额外操作指令，字段设计以用户明确要求为准。

## 设计

保留通用审计字段 `id、created_at、updated_at、deleted_at`，以及用户指定保留的 `academic_year、semester、app_id`。

业务字段映射如下：

| 表格列 | Thrift 字段 | 类型 |
| --- | --- | --- |
| 教师姓名 | `teacher_name` | `string` |
| 考试科目 | `exam_subject` | `string` |
| 使用试卷班级 | `class_name` | `string` |
| 出卷 | `exam_workload` | `i32` |
| 阅卷 | `scoring_workload` | `i32` |
| 巡考 | `patrol_count` | `i32` |
| 监考 | `supervision_count` | `i32` |
| 考务 | `exam_admin_count` | `i32` |
| 费用标准（元） | `fee_standard` | `double` |

`patrol_count`、`supervision_count`、`exam_admin_count`、`fee_standard` 复用项目中 `ModelBeginExamWorkload` 已有命名。`total_count` 和 `total_fee` 不在表格中，因此不新增。

## 验证

- 检查 `ModelFinalExam` 字段与规格一一对应。
- 使用现有 Thrift 编译/生成命令（如仓库提供）验证语法。
- 不新增测试文件。
