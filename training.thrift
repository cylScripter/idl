namespace go training
include "common/base.thrift"

// 实训课服务
service trainingservice {
    // 导入实训课
    ImportTrainingCourseResp ImportTrainingCourse(1:ImportTrainingCourseReq req)(
        api.post = '/training/ImportTrainingCourse'
        api.serializer = 'json'
    )

    // 创建实训课
    CreateTrainingCourseResp CreateTrainingCourse(1:CreateTrainingCourseReq req)(
        api.post = '/training/CreateTrainingCourse'
        api.serializer = 'json'
    )

    // 获取实训课列表
    GetTrainingCourseListResp GetTrainingCourseList(1:GetTrainingCourseListReq req)(
        api.post = '/training/GetTrainingCourseList'
        api.serializer = 'json'
    )
    // 获取自己实训课
    GetSelfTrainingCourseListResp GetSelfTrainingCourseList(1:GetSelfTrainingCourseListReq req)(
        api.post = '/training/GetSelfTrainingCourseList'
        api.serializer = 'json'
    )

    // 获取实训课
    GetTrainingCourseResp GetTrainingCourse(1:GetTrainingCourseReq req)(
        api.post = '/training/GetTrainingCourse'
        api.serializer = 'json'
    )
    // 填写实训主要内容及安排
    FillTrainingCourseResp FillTrainingCourse(1:FillTrainingCourseReq req)(
        api.post = '/training/FillTrainingCourse'
        api.serializer = 'json'
    )
    // 删除实训课
    DeleteTrainingCourseResp DeleteTrainingCourse(1:DeleteTrainingCourseReq req)(
        api.post = '/training/DeleteTrainingCourse'
        api.serializer = 'json'
    )

    //  导出实训课计划表 ： 批量导出汇总报表（按专业、年级、班级、周次排序）
    ExportTrainingCourseResp ExportTrainingCourse(1:ExportTrainingCourseReq req)(
        api.post = '/training/ExportTrainingCourse'
        api.serializer = 'json'
    )

    // 更新实训课
    UpdateTrainingCourseResp UpdateTrainingCourse(1:UpdateTrainingCourseReq req)(
        api.post = '/training/UpdateTrainingCourse'
        api.serializer = 'json'
    )

    // 更新实训课教师
    UpdateTrainingCourseTeacherResp UpdateTrainingCourseTeacher(1:UpdateTrainingCourseTeacherReq req)(
        api.post = '/training/UpdateTrainingCourseTeacher'
        api.serializer = 'json'
    )

   // 批准上报数据
   ApproveTrainingCourseDataResp ApproveTrainingCourseData(1:ApproveTrainingCourseDataReq req)(
       api.post = '/training/ApproveTrainingCourseData'
       api.serializer = 'json'
   )

   // 实训教学文件上传
   UploadTrainingCourseFileResp UploadTrainingCourseFile(1:UploadTrainingCourseFileReq req)(
       api.post = '/training/UploadTrainingCourseFile'
       api.serializer = 'json'
   )

   // 上传实训案例
   UploadTrainingCourseCaseResp UploadTrainingCourseCase(1:UploadTrainingCourseCaseReq req)(
       api.post = '/training/UploadTrainingCourseCase'
       api.serializer = 'json'
   )

   // 导出实训教学文件
   ExportTrainingCourseFileResp ExportTrainingCourseFile(1:ExportTrainingCourseFileReq req)(
       api.post = '/training/ExportTrainingCoursePlan'
       api.serializer = 'json'
   )
   // 导出 实训案例
   ExportTrainingCourseCaseResp ExportTrainingCourseCase(1:ExportTrainingCourseCaseReq req)(
       api.post = '/training/ExportTrainingCourseCase'
        api.serializer = 'json'
   )

   // 上传实践项目来源证明
   UploadTrainingCourseSourceResp UploadTrainingCourseSource(1:UploadTrainingCourseSourceReq req)(
       api.post = '/training/UploadTrainingCourseSource'
       api.serializer = 'json'
   )

   // 导出 实践项目来源证明
   ExportTrainingCourseSourceResp ExportTrainingCourseSource(1:ExportTrainingCourseSourceReq req)(
       api.post = '/training/ExportTrainingCourseSource'
        api.serializer = 'json'
   )

   // 获取导出结果
   GetExportResultResp GetExportResult(1:GetExportResultReq req)(
       api.post = '/training/GetExportResult'
       api.serializer = 'json'
   )

   // 专业管理
   // 获取专业列表
   GetPastMajorListResp GetPastMajorList(1:GetPastMajorListReq req)(
   api.post = '/training/GetPastMajorList'
    api.serializer = 'json'
   )

   // 删除 专业
   DeletePastMajorResp DeletePastMajor(1:DeletePastMajorReq req)(
   api.post = '/training/DeletePastMajor'
    api.serializer = 'json'
   )

   // 添加专业
   AddPastMajorResp AddPastMajor(1:AddPastMajorReq req)(
   api.post = '/training/AddPastMajor'
    api.serializer = 'json'
   )

   // 修改
   UpdatePastMajorResp UpdatePastMajor(1:UpdatePastMajorReq req)(
   api.post = '/training/UpdatePastMajor'
    api.serializer = 'json'
   )
   // ==================================2026-04-18====================================
   // GetClassroomList
   GetClassroomListResp GetClassroomList(1:GetClassroomListReq req)(
     api.post = '/training/GetClassroomList'
     api.serializer = 'json'
   )

   // Import
   ImportClassroomResp ImportClassroom(1:ImportClassroomReq req)(
       api.post = '/training/ImportClassroom'
       api.serializer = 'json'
   )
   // 编辑
   EditClassroomResp EditClassroom(1:EditClassroomReq req)(
     api.post = '/training/EditClassroom'
     api.serializer = 'json'
   )
   // ExportMajorPracticeTeaching
   ExportMajorPracticeTeachingResp ExportMajorPracticeTeaching(1:ExportMajorPracticeTeachingReq req)(
   api.post = '/training/ExportMajorPracticeTeaching'
    api.serializer = 'json'
   )

   // ImportMajorPracticeTeaching
   ImportMajorPracticeTeachingResp ImportMajorPracticeTeaching(1:ImportMajorPracticeTeachingReq req)(
   api.post = '/training/ImportMajorPracticeTeaching'
    api.serializer = 'json'
   )
   // GetMajorPracticeTeachingPlanList
   GetMajorPracticeTeachingPlanListResp GetMajorPracticeTeachingPlanList(1:GetMajorPracticeTeachingPlanListReq req)(
   api.post = '/training/GetMajorPracticeTeachingPlanList'
    api.serializer = 'json'
   )
   // 填写预算
   FillMajorPracticeTeachingBudgetResp FillMajorPracticeTeachingBudget(1:FillMajorPracticeTeachingBudgetReq req)(
    api.post = '/training/FillMajorPracticeTeachingBudget'
    api.serializer = 'json'
   )
   // 修改
   EditMajorPracticeTeachingPlanResp EditMajorPracticeTeachingPlan(1:EditMajorPracticeTeachingPlanReq req)(
   api.post = '/training/EditMajorPracticeTeachingPlan'
    api.serializer = 'json'
   )
   // 排课
   ScheduleTeachingResp ScheduleTeaching(1:ScheduleTeachingReq req)(
       api.post = '/training/ScheduleTeaching'
       api.serializer = 'json'
   )
   // 排教室
   ScheduleClassroomResp ScheduleClassroom(1:ScheduleClassroomReq req)(
       api.post = '/training/ScheduleClassroom'
       api.serializer = 'json'
   )

   // 获取排课结果
   GetTeachScheduleResp GetTeachSchedule(1:GetTeachScheduleReq req)(
       api.post = '/training/GetTeachSchedule'
       api.serializer = 'json'
   )
   // 教室使用情况
   GetClassroomUsageResp GetClassroomUsage(1:GetClassroomUsageReq req)(
   api.post = '/training/GetClassroomUsage'
    api.serializer = 'json'
   )

   // 获取规划详情
   GetPlanDetailResp GetPlanDetail(1:GetPlanDetailReq req)(
       api.post = '/training/GetPlanDetail'
       api.serializer = 'json'
   )
}

struct GetPlanDetailResp {
    1: ModelMajorPracticeTeachingPlan info(go.tag='json:"info"');
    // 教师安排
    2: list<ScheduleTeachingReqItem> teaching_schedule(go.tag='json:"teaching_schedule"');
    // 教室安排
    3: list<ScheduleClassroomReqItem> classroom_schedule(go.tag='json:"classroom_schedule"');

}

struct GetPlanDetailReq {
    1: string id(go.tag='json:"id" binding:"required"');
}

struct GetClassroomUsageResp {

}

struct GetClassroomUsageReq {

}

struct GetTeachScheduleReq {
    1: string id(go.tag='json:"id"');
    2: string name(go.tag='json:"name"');
    3: string academic_year (go.tag='json:"academic_year" binding:"required"');
    4: string semester (go.tag='json:"semester" binding:"required"');
    5: i32 week_num(go.tag='json:"week_num" binding:"required"');
    6: i32 category(go.tag='json:"category" binding:"required"'); // 1 教师 2 教室
}


struct GetTeachScheduleResp {
    1:map<string, list<i32>> schedule(go.tag='json:"schedule"'); // 星期几 对应的时间
    2:i32 week_num(go.tag='json:"week_num"'); // 周数
}
struct ImportClassroomReq {
    1: string upload_id(go.tag='json:"upload_id" binding:"required"');
}
struct ImportClassroomResp {}

struct ScheduleTeachingReq {
    // 课程
    1: i32 course_id(go.tag='json:"course_id" binding:"required"');
    // 课程名称
    2: list<ScheduleTeachingReqItem> teachers(go.tag='json:"teachers" binding:"required"');
}
struct ScheduleTeachingReqItem {
    // 教师id
    1: string teacher_id (go.tag='json:"teacher_id"');
    // 时间
    2: list<ScheduleTime> time(go.tag='json:"times"'); //  时间
    3: i32 is_outside(go.tag='json:"is_outside"'); // 是否校外 1 外校  0 内校
    4: string teacher_name (go.tag='json:"teacher_name"'); // 教师名称
}

struct ScheduleTeachingResp {}

struct ScheduleClassroomReq  {
     // 课程
    1: i32 course_id(go.tag='json:"course_id" binding:"required"');
    2: list<ScheduleClassroomReqItem> classrooms(go.tag='json:"classrooms" binding:"required"');
}

struct ScheduleClassroomResp {}

struct ScheduleClassroomReqItem {
  // 教室id
  1: i32 classroom_id (go.tag='json:"classroom_id"');
  2: list<ScheduleTime> time(go.tag='json:"times"'); //  时间
  3: i32 is_outside(go.tag='json:"is_outside"'); // 是否校外 1 外校  0 内校
  4: string classroom_name (go.tag='json:"classroom_name"');  //教室名称
}


struct ScheduleTime {
    1: string day(go.tag='json:"day"'); // 星期几
    2: list<i32> sessions(go.tag='json:"sessions"');
    4: list<i32> weeks(go.tag='json:"weeks"');
}


struct EditMajorPracticeTeachingPlanResp {}

struct EditMajorPracticeTeachingPlanReq {
   1:i32 id (go.tag='json:"id"');
   2: i32 is_delete (go.tag='json:"is_delete"');
   5: string major(go.tag='json:"major"'); // 专业
   6: string class_name(go.tag='json:"class_name"');
     // 学生人数
   7: i32 student_number(go.tag='json:"student_number" binding:"required"'); // 学生人数
     // 课程名称
     8: string course_name(go.tag='json:"course_name" binding:"required"');
     // 安排周次
     9: i32 week(go.tag='json:"week"binding:"required"'); // 安排周次
     // 合作企业全称
     10: string enterprise_name(go.tag='json:"enterprise_name"');
     // 费用预算
     11: string cost_budget(go.tag='json:"cost_budget"'); // 费用预算
     // 预算说明
     12: string cost_budget_explain(go.tag='json:"cost_budget_explain"');
     13: string academic_year(go.tag='json:"academic_year" binding:"required"'); // 学年
     14: string semester(go.tag='json:"semester" binding:"required"'); // 学期
}



struct FillMajorPracticeTeachingBudgetResp {

}

struct FillMajorPracticeTeachingBudgetReq {
   1:i32 id (go.tag='json:"id" binding:"required"');
   // 合作企业全称
   2: string company_name(go.tag='json:"company_name"');
    // 费用预算
   3: string cost_budget(go.tag='json:"cost_budget"');
     // 预算说明
   4: string cost_budget_explain(go.tag='json:"cost_budget_explain"');
}

struct GetMajorPracticeTeachingPlanListResp {
    1 :list<ModelMajorPracticeTeachingPlan> list (go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}

enum GetMajorPracticeTeachingPlanListReqOption {
    id = 1
    course_name = 2
    class_name = 3
    academic_year = 4
    semester = 5
}

struct GetMajorPracticeTeachingPlanListReq {
    1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}


struct ImportMajorPracticeTeachingResp {
    1 :string task_key (go.tag='json:"task_key"');
}
struct ImportMajorPracticeTeachingReq {
   // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');
  // 导入文件
  3: string upload_id(go.tag='json:"upload_id" binding:"required"');
}

struct ExportMajorPracticeTeachingResp {
    1 :string task_key (go.tag='json:"task_key"');
}
struct ExportMajorPracticeTeachingReq {
   // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');
  // 导出类型
  3: string export_type(go.tag='json:"export_type" binding:"required"');
}

struct EditClassroomResp {
}
struct EditClassroomReq {
  1: i32 id(go.tag='json:"id"');
  2: string name(go.tag='json:"name" binding:"required"')
  3: string location(go.tag='json:"location" binding:"required"')
  4: i32 is_delete(go.tag='json:"is_delete"')
}

enum OptionItem {
  name = 1;
  id = 2;
}

struct GetClassroomListResp {
  1: list<ModelClassroom> list(go.tag='json:"list"');
   2: base.Paginate paginate(go.tag='json:"paginate"');
}
struct GetClassroomListReq {
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}


struct  UpdatePastMajorReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
  2: string name(go.tag='json:"name" binding:"required"'); // 专业名称
  3: i32 orders   (go.tag='json:"orders"');
  4: string research_director_id (go.tag='json:"research_director_id" binding:"required"');
  5: string research_director (go.tag='json:"research_director" binding:"required"');
}

struct UpdatePastMajorResp {
}

struct AddPastMajorReq {
  1: string name(go.tag='json:"name" binding:"required"'); // 专业名称
  2: i32 orders   (go.tag='json:"orders"');
  3: string research_director_id (go.tag='json:"research_director_id" binding:"required"'); // 主任id

}

struct AddPastMajorResp {
}

struct DeletePastMajorReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
}
struct DeletePastMajorResp {
}

enum GetPastMajorListOption {
   id = 1;
   name = 2;
   research_director_id = 3;
}

struct GetPastMajorListReq  {
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}
struct GetPastMajorListResp {
  1: list<ModelMajor> list(go.tag='json:"list"');
   2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetExportResultReq {
  1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"'); // 实训课id
}
struct GetExportResultResp {
    1 :string task_key (go.tag='json:"task_key"');
    2 :CourseFile file (go.tag='json:"file"');
}

struct ExportTrainingCourseSourceReq {
  // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');
}

struct ExportTrainingCourseSourceResp {
    1 :string task_key (go.tag='json:"task_key"');
}

struct UploadTrainingCourseSourceReq {

  1: string upload_id(go.tag='json:"upload_id" binding:"required"');
  2: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
}

struct UploadTrainingCourseSourceResp {
    1 :string task_key (go.tag='json:"task_key"');
}

struct ExportTrainingCourseCaseReq {
  // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');
}
struct ExportTrainingCourseCaseResp {
    1 :string task_key (go.tag='json:"task_key"');
}

struct ExportTrainingCourseFileReq {
  // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');
}
struct ExportTrainingCourseFileResp {
    1 :string task_key (go.tag='json:"task_key"');
}

struct UploadTrainingCourseCaseReq {
  1: string upload_id(go.tag='json:"upload_id" binding:"required"');
  2: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
}

struct UploadTrainingCourseCaseResp {   }

struct UploadTrainingCourseFileReq {
  1: string upload_id(go.tag='json:"upload_id" binding:"required"');
  2: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
}
struct UploadTrainingCourseFileResp {}




struct ApproveTrainingCourseDataReq {
  1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
  2: i32 type (go.tag='json:"type" binding:"required"'); // 1
  // 是否同意
  3: i32 agree (go.tag='json:"agree" binding:"required"');  // 是否同意 1 同意 2 不同意
}

struct ApproveTrainingCourseDataResp {

}

struct UpdateTrainingCourseTeacherReq {
  1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
  2: i32 training_course_teacher_id (go.tag='json:"training_course_teacher_id" binding:"required"');
  3: list<Teacher> teachers(go.tag='json:"teachers" binding:"required"');
  4: string date (go.tag='json:"date"');
}

struct UpdateTrainingCourseTeacherResp  {}

struct UpdateTrainingCourseReq {
    1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
    5: string major(go.tag='json:"major" '); // 专业
    6: string class_name(go.tag='json:"class_name"'); // 班级
    7: i32 student_number(go.tag='json:"student_number"'); //  学生人数
    8: string course_name(go.tag='json:"course_name" '); // 课程名称
    9: string location(go.tag='json:"location" '); // 地点
    10: string cooperation_enterprise(go.tag='json:"cooperation_enterprise"'); // 合作企业全称
    11: i32 training_week(go.tag='json:"training_week"'); // 实训周次
    13: string teachers(go.tag='json:"teachers" gorm:"column:teachers;type:text"'); // 指导老师
    17: string grade(go.tag='json:"grade" gorm:"column:grade"');  // 年级
    18: string main_teacher(go.tag='json:"main_teacher" gorm:"column:main_teacher"');  // 主带教师
    14: i32 course_type(go.tag='json:"course_type"'); // 课程类型
}

struct UpdateTrainingCourseResp {

}

struct ExportTrainingCourseReq {
  // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');

  3: i32 course_type(go.tag='json:"course_type"'); // 课程类型 1 实训课  2 实践课
}

struct ExportTrainingCourseResp {
    1 :string task_key (go.tag='json:"task_key"');
}

struct DeleteTrainingCourseReq {
  1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
}
struct DeleteTrainingCourseResp {}


struct FillTrainingCourseReq {
  1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
  2: i32 training_course_teacher_id (go.tag='json:"training_course_teacher_id" binding:"required"');
  3: string content(go.tag='json:"content" binding:"required"'); //  实训内容
}

struct FillTrainingCourseResp {}

struct GetTrainingCourseReq {
  1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
}
struct GetTrainingCourseResp {
  1: ModelTrainingCourse training_course(go.tag='json:"training_course"');
  2: list<TrainingCourseTeacherOne> teacher_list(go.tag='json:"teacher_list"');

  //  实训教学文件
  3: CourseFile course_file(go.tag='json:"course_file"');
  // 实训案例
  4: CourseFile course_case_file(go.tag='json:"course_case_file"');
  // 实践项目来源证明
  5: CourseFile project_source_file(go.tag='json:"project_source_file"');

  // 实训教学文件是否上传
  6: i32 course_file_status(go.tag='json:"course_file_status"');
  // 实训案例是否上传
  7: i32 course_case_status(go.tag='json:"course_case_status"');
  // 实践项目来源证明是否上传
  8: i32 project_source_status(go.tag='json:"project_source_status"');

  // 学院
  9: string college(go.tag='json:"college"');

}

struct TrainingCourseTeacherOne {
  1:i32 id(go.tag='json:"id"');
  2:i32 training_course_id(go.tag='json:"training_course_id"'); // 课程 id
  3:list<Teacher> teachers(go.tag='json:"teachers"'); // 上课教师
  4:i32 app_id(go.tag='json:"app_id"');
  5:string week(go.tag='json:"week"'); // 星期
  6: string academic_year(go.tag='json:"academic_year"'); // 学年
  7: string semester(go.tag='json:"semester"'); // 学期
  8: string content(go.tag='json:"content"'); //  实训内容
  9: string location(go.tag='json:"location"'); // 地点
  10: string fill_teacher(go.tag='json:"fill_teacher"'); // 填报老师
  11: string date(go.tag='json:"date"'); // 日期
  12: i32 fill_time(go.tag='json:"fill_time"'); // 填报时间
  13: string main_teacher(go.tag='json:"main_teacher"'); //  主带老师
  14:string assistant_teacher(go.tag='json:"assistant_teacher"'); // 辅带教师
  15: i32 student_number(go.tag='json:"student_number"'); // 学生人数
}

struct GetTrainingCourseListReq {
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

struct GetTrainingCourseListResp {
  1: list<ModelTrainingCourse> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}


struct GetSelfTrainingCourseListReq {
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

enum TrainingCourseListReqOption {
    id = 1;
    academic_year = 2; // 学年
    semester = 3; // 学期
    major = 4; // 专业
    class_name = 5; // 班级
    course_name = 6; // 名称
    grade = 7; // 年级
    type = 8; // 获取自己的课程使用 类型 1 填报 2 上传文件
    // 是否已经填报
    is_fill = 9;  // 是否已经填报 1 填报过 2 没有填
    is_file_upload = 10; // 是否已经上传文件  1 填报过 2 没有填
    is_case_file_upload = 11; // 是否已经上传案例文件  1 填报过 2 没有填
    is_project_source_file_upload = 12; // 是否已经上传项目来源证明文件  1 填报过 2 没有填
}

struct GetSelfTrainingCourseListResp {
  1: list<ModelTrainingCourse> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct ImportTrainingCourseReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required" '); // 学年
  2: string semester(go.tag='json:"semester"binding:"required" '); // 学期
  3: string upload_id(go.tag='json:"upload_id" binding:"required"'); // 文件上传id
  // 课程类型
  4: i32 type(go.tag='json:"type" binding:"required"'); // 1 实训课 2 生产性实践教学课

}
struct ImportTrainingCourseResp {
    1 :string task_key (go.tag='json:"task_key"');
}

struct CreateTrainingCourseReq {
  1: string major(go.tag='json:"major" binding:"required"'); // 专业
  2: string class_name(go.tag='json:"class_name" binding:"required"'); // 班级
  3: i32    student_number(go.tag='json:"student_number" binding:"required"'); //  学生人数
  4: string course_name(go.tag='json:"course_name" binding:"required"'); // 课程名称
  5: string location(go.tag='json:"location" binding:"required"'); // 地点
  6: string cooperation_enterprise(go.tag='json:"cooperation_enterprise"'); // 合作企业全称
  7: i32    training_week(go.tag='json:"training_week" binding:"required"'); // 实训周次
  8: string teachers(go.tag='json:"teachers"'); // 指导老师
  9: string academic_year(go.tag='json:"academic_year" binding:"required"'); // 学年
  10: string semester(go.tag='json:"semester" binding:"required"'); // 学期
  11: i32    education_level(go.tag='json:"education_level"'); // 教育层次 2:本科 1:大专
  12: string grade(go.tag='json:"grade"'); // 年级
  13: string main_teacher(go.tag='json:"main_teacher"'); // 主带教师
  14: i32 course_type(go.tag='json:"course_type"'); // 课程类型
}

struct CreateTrainingCourseResp {
  1: i32 training_course_id(go.tag='json:"training_course_id"');
}


// 实训
struct ModelTrainingCourse {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index;not null" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at;not null" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at;not null" json:"deleted_at"');

  5: string major(go.tag='json:"major" gorm:"column:major"'); // 专业
  6: string class_name(go.tag='json:"class_name" gorm:"column:class_name"'); // 班级
  7: i32 student_number(go.tag='json:"student_number" gorm:"column:student_number"'); //  学生人数
  8: string course_name(go.tag='json:"course_name" gorm:"column:course_name"'); // 课程名称
  9: string location(go.tag='json:"location" gorm:"column:location;type:text"'); // 地点
  10: string cooperation_enterprise(go.tag='json:"cooperation_enterprise" gorm:"column:cooperation_enterprise"'); // 合作企业全称
  11: i32 training_week(go.tag='json:"training_week" gorm:"column:training_week"'); // 实训周次
  12: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id;not null"');
  13: string teachers(go.tag='json:"teachers" gorm:"column:teachers;type:text"'); // 指导老师
  14: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"'); // 学年
  15: string semester(go.tag='json:"semester" gorm:"column:semester"'); // 学期
  // 添加教育层次字段
  16: i32 education_level(go.tag='json:"education_level" gorm:"column:education_level;default:1"'); // 教育层次 1:本科 2:大专
  // 年级
  17: string grade(go.tag='json:"grade" gorm:"column:grade"');
  // 主带教师
  18: string main_teacher(go.tag='json:"main_teacher" gorm:"column:main_teacher"');

  // 是否批准
  19: i32 is_approved(go.tag='json:"is_approved" gorm:"column:is_approved;default:0"');
  // 批准时间
  20: i32 approved_time(go.tag='json:"approved_time" gorm:"column:approved_time"');

  // 实训教学文件上传
  21: string training_file(go.tag='json:"training_file" gorm:"column:training_file;type:text"');
  // 实训案例
  22: string training_case_file(go.tag='json:"training_case_file" gorm:"column:training_case_file;type:text"');

  // 实训教学文件是否合格
  23: i32 is_qualified(go.tag='json:"is_qualified" gorm:"column:is_qualified;default:0"');

  // 实训教学文件上传 人
  24: string training_file_person(go.tag='json:"training_file_person" gorm:"column:training_file_person;type:text"');
  // 实训案例上传 人
  25: string training_case_file_person(go.tag='json:"training_case_file_person" gorm:"column:training_case_file_person;type:text"');
  // 实践项目来源证明
  26: string project_source_proof(go.tag='json:"project_source_proof" gorm:"column:project_source_proof;type:text"');
  // 课程类型
  27: i32 course_type(go.tag='json:"course_type" gorm:"column:course_type;default:1"'); // 1 实训课 2 生产性实践教学课

  // 填报人
  28: string filler(go.tag='json:"filler" gorm:"column:filler"'); // 填报人

  //  实践项目来源证明上报人
  29: string project_source_proof_person(go.tag='json:"project_source_proof_person" gorm:"column:project_source_proof_person"');
}

enum CourseType {
  TRAINING = 1; // 实训课
  PRACTICE = 2; // 生产性实践教学课
}

struct CourseFile {
  1: string upload_id(go.tag='json:"upload_id"');
  2: string url(go.tag='json:"url"');
  3: string name(go.tag='json:"name"');
}


struct Location {
  1: string name(go.tag='json:"name"');
  2: string code(go.tag='json:"code"');
  3: i32 is_outside(go.tag='json:"is_outside"');  // 是否校外 1 外校  0 内校
}

// 指导老师
struct Teacher {
  1: string name(go.tag='json:"name"');
  2: string id(go.tag='json:"id"');
  3: i32 is_outside(go.tag='json:"is_outside"'); // 是否校外 1 外校  0 内校
  4: i32 time_slot (go.tag='json:"time_slot"'); // 0 全天 1 上午 2 下午
}

// 实训课老师
struct ModelTrainingCourseTeacher {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: i32 training_course_id(go.tag='json:"training_course_id" gorm:"column:training_course_id"');  // 实训id
  6 : string teachers (go.tag='json:"teachers" gorm:"column:teachers;type:text"');
  8: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  9: string week(go.tag='json:"week" gorm:"column:week"'); // 星期
  // 学期
  10: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"');
  11: string semester(go.tag='json:"semester" gorm:"column:semester"');
  // 实训内容  gorm text 类型
  12: string content(go.tag='json:"content" gorm:"column:content;type:text"');
  // 上课地点
  13: string location(go.tag='json:"location" gorm:"column:location"');

  14: string fill_teacher(go.tag='json:"fill_teacher" gorm:"column:fill_teacher"'); // 填报老师
  // 日期
  15: string date(go.tag='json:"date" gorm:"column:date"'); // 日期

  // 填报时间
  16: i32 fill_time(go.tag='json:"fill_time" gorm:"column:fill_time"');
}


// 专业表
struct ModelMajor {
   1: i32 id (go.tag='gorm:"column:id" json:"id"');
   2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
   3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
   4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
   5: string name(go.tag='json:"name" gorm:"column:name"');
   6: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
   7: i32 orders (go.tag='json:"orders" gorm:"column:orders"');
   // 教研室主任
   8: string research_director(go.tag='json:"research_director" gorm:"column:research_director"'); // 教研室主任
   9: string research_director_id(go.tag='json:"research_director_id" gorm:"column:research_director_id"');
}

// 教师课程索引
struct ModelTeacherCourseIndex {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string teacher_id(go.tag='json:"teacher_id" gorm:"column:teacher_id"');
  6: string course_ids(go.tag='json:"course_ids" gorm:"column:course_ids;type:text"');
  7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  // 学期
  8: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"');
  9: string semester(go.tag='json:"semester" gorm:"column:semester"');
  // 教师 名
  10: string teacher_name(go.tag='json:"teacher_name" gorm:"column:teacher_name"');
}

// 教室表
struct ModelClassroom {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='json:"name" gorm:"column:name"');
  6: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  7: i32 orders (go.tag='json:"orders" gorm:"column:orders"');
  8: string location(go.tag='json:"location" gorm:"column:location"');
}

// 教师( 教室 )排课任务表teacher_schedules
struct ModelTeachSchedule {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string teacher_id(go.tag='json:"teacher_id" gorm:"column:teacher_id"');
  6: i32 course_id(go.tag='json:"course_id" gorm:"column:course_id"');
  7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  8: i32 week_number(go.tag='json:"week_number" gorm:"column:week_number"');
  9: string day_of_week(go.tag='json:"day_of_week" gorm:"column:day_of_week"');
  16: i32 status (go.tag='json:"status" gorm:"column:status"');
  17: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"');
  18: string semester(go.tag='json:"semester" gorm:"column:semester"');
  19: i32 category (go.tag='json:"category" gorm:"column:category"');
  20: i32 classroom_id(go.tag='json:"classroom_id" gorm:"column:classroom_id"');
  21: string time_slot(go.tag='json:"time_slot" gorm:"column:time_slot"');
  22: string teacher_name(go.tag='json:"teacher_name" gorm:"column:teacher_name"');
  23: i32 is_outside(go.tag='json:"is_outside" gorm:"column:is_outside"');
}


// 专业生产性实践教学规划表
struct ModelMajorPracticeTeachingPlan {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string major(go.tag='json:"major" gorm:"column:major"'); // 专业
  // 班级
  6: string class_name(go.tag='json:"class_name" gorm:"column:class_name"');
  // 学生人数
  7: i32 student_number(go.tag='json:"student_number" gorm:"column:student_number"');
  // 课程名称
  8: string course_name(go.tag='json:"course_name" gorm:"column:course_name"');
  // 安排周次
  9: i32 week(go.tag='json:"week" gorm:"column:week"');
  // 合作企业全称
  10: string enterprise_name(go.tag='json:"enterprise_name" gorm:"column:enterprise_name"');
  // 费用预算
  11: string cost_budget(go.tag='json:"cost_budget" gorm:"column:cost_budget"');
  // 预算说明
  12: string cost_budget_explain(go.tag='json:"cost_budget_explain" gorm:"column:cost_budget_explain"');

  13: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"');
  14: string semester(go.tag='json:"semester" gorm:"column:semester"');

  15: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
}