namespace go training
include "common/base.thrift"

// 实训课服务
service trainingservice {
    // 导入实训课
    ImportTrainingCourseResp ImportTrainingCourse(1:ImportTrainingCourseReq req)(
        api.post = '/training/ImportTrainingCourse'
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

    //  导出实训课计划表
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


}

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
}

struct UpdateTrainingCourseResp {

}

struct ExportTrainingCourseReq {
  // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');
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
  3: string content(go.tag='json:"week" binding:"required"'); //  实训内容
}

struct FillTrainingCourseResp {}

struct GetTrainingCourseReq {
  1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
}
struct GetTrainingCourseResp {
  1: ModelTrainingCourse training_course(go.tag='json:"training_course"');
  2: list<TrainingCourseTeacherOne> teacher_list(go.tag='json:"teacher_list"');
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
}

struct GetSelfTrainingCourseListResp {
  1: list<ModelTrainingCourse> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct ImportTrainingCourseReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required" '); // 学年
  2: string semester(go.tag='json:"semester"binding:"required" '); // 学期
  3: string upload_id(go.tag='json:"upload_id" binding:"required"'); // 文件上传id

}
struct ImportTrainingCourseResp {
    1 :string task_key (go.tag='json:"task_key"');
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
  22: string training_case_file(go.tag='json:"training_case" gorm:"column:training_case;type:text"');


}


struct CourseFile {
  1: string upload_id(go.tag='json:"upload_id"');
  2: string url(go.tag='json:"url"');
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