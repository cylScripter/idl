namespace go education
include "common/base.thrift"



service educationservice {
  // 创建主体
  CreateAppResp CreateApp(1:CreateAppReq req)(
     api.post = '/education/CreateApp'
     api.serializer = 'json'
  );
  // 登录
  LoginResp Login(1:LoginReq req)(
     api.post = '/education/Login'
     api.serializer = 'json'
  );
  // 创建用户
  CreateUserResp CreateUser(1:CreateUserReq req)(
     api.post = '/education/CreateUser'
     api.serializer = 'json'
  );
  // 创建角色
  CreateRoleResp CreateRole(1:CreateRoleReq req)(
     api.post = '/education/CreateRole'
     api.serializer = 'json'
  );
  // 删除用户
  DeleteUserResp DeleteUser (1:DeleteUserReq req)(
     api.post = '/education/DeleteUser'
     api.serializer = 'json'
  );
  // 获取用户列表
  GetUserListResp GetUserList(1:GetUserListReq req)(
     api.post = '/education/GetUserList'
     api.serializer = 'json'
  );
  // 获取角色列表
  GetRoleListResp GetRoleList(1:GetRoleListReq req)(
     api.post = '/education/GetRoleList'
     api.serializer = 'json'
  )
   // 创建权限
    CreatePermissionResp CreatePermission(1:CreatePermissionReq req)(
      api.post = '/system/CreatePermission'
      api.serializer = 'json'
    )

  // 获取权限列表
  GetPermissionListResp GetPermissionList(1:GetPermissionListReq req)(
     api.post = '/education/GetPermissionList'
     api.serializer = 'json'
  )

  // 获取菜单
  GetMenuResp GetMenu(1:GetMenuReq req)(
     api.post = '/education/GetMenu'
     api.serializer = 'json'
  )

  // 获取菜单列表
  GetMenuListResp GetMenuList(1:GetMenuListReq req)(
     api.post = '/education/GetMenuList'
     api.serializer = 'json'
  )

  // 获取用户信息
  GetUserInfoResp GetUserInfo(1:GetUserInfoReq req)(
     api.post = '/education/GetUserInfo'
     api.serializer = 'json'
  )

  // 获取权限码
  GetAuthCodeResp GetAuthCode(1:GetAuthCodeReq req)(
     api.post = '/education/GetAuthCode'
     api.serializer = 'json'
  )



  // 设置用户角色
   SetUserRoleResp SetUserRole(1:SetUserRoleReq req)(
      api.post = '/education/SetUserRole'
      api.serializer = 'json'
  )
     // 设置角色权限
   SetRolePermissionResp SetRolePermission(1:SetRolePermissionReq req)(
        api.post = '/education/SetRolePermission'
        api.serializer = 'json'
     )

    // 设置角色菜单
    SetRoleMenuResp SetRoleMenu(1:SetRoleMenuReq req)(
        api.post = '/education/SetRoleMenu'
        api.serializer = 'json'
    )
   // 创建菜单
   CreateMenuResp CreateMenu(1:CreateMenuReq req)(
       api.post = '/education/CreateMenu'
       api.serializer = 'json'
   )
   // 创建教研室
   CreateOfficeResp CreateOffice(1:CreateOfficeReq req)(
       api.post = '/education/CreateOffice'
       api.serializer = 'json'
   )


   // 获取教研室
   GetOfficeListResp GetOfficeList(1:GetOfficeListReq req)(
       api.post = '/education/GetOfficeList'
       api.serializer = 'json'
   )

   // 获取班级
   GetClassListResp GetClassList(1:GetClassListReq req)(
       api.post = '/education/GetClassList'
       api.serializer = 'json'
   )

   // 导入课程申请数据
   ImportCourseApplyResp ImportCourseApply(1: ImportCourseApplyReq req)(
      api.post = '/education/ImportCourseApply'
      api.serializer = 'json'
   )

   // 获取课程申请数据列表
   GetCourseApplyListResp GetCourseApplyList(1:GetCourseApplyListReq req)(
      api.post = '/education/GetCourseApplyList'
      api.serializer = 'json'
   )

   // 获取自己的课程申请填报
   GetSelfCourseApplyListResp GetSelfCourseApplyList(1:GetSelfCourseApplyListReq req)(
      api.post = '/education/GetSelfCourseApplyList'
      api.serializer = 'json'
   )

   // 导入用户
   ImportUserResp ImportUser(1:ImportUserReq req)(
      api.post = '/education/ImportUser'
      api.serializer = 'json'
   )

   // 删除课程申请
   DeleteCourseApplyResp DeleteCourseApply(1:DeleteCourseApplyReq req)(
       api.post = '/education/DeleteCourseApply'
       api.serializer = 'json'
   )

   // 审核课程申请
   ApproveCourseApplyResp ApproveCourseApply(1:ApproveCourseApplyReq req)(
      api.post = '/education/ApproveCourseApply'
      api.serializer = 'json'
   )

   // 重置课程申请
   ResetCourseApplyResp ResetCourseApply(1:ResetCourseApplyReq req)(
      api.post = '/education/ResetCourseApply'
      api.serializer = 'json'
   )

   // 填写课程申请
   FillCourseApplyResp FillCourseApply(1:FillCourseApplyReq req)(
      api.post = '/education/FillCourseApply'
      api.serializer = 'json'
   )

   // 导出自查表
   ExportSelfCheckTableResp ExportSelfCheckTable(1:ExportSelfCheckTableReq req)(
      api.post = '/education/ExportSelfCheckTable'
      api.serializer = 'json'
   )

   // 导出责任书
   ExportResponsibilityResp ExportResponsibility(1:ExportResponsibilityReq req)(
      api.post = '/education/ExportResponsibility'
      api.serializer = 'json'
   )

   // 导出所有自查表
   ExportAllSelfCheckTableResp ExportAllSelfCheckTable(1:ExportAllSelfCheckTableReq req)(
      api.post = '/education/ExportAllSelfCheckTable'
      api.serializer = 'json'
   )

   // UpdateCourseApply 更新课程申请
   UpdateCourseApplyResp UpdateCourseApply(1:UpdateCourseApplyReq req)(
      api.post = '/education/UpdateCourseApply'
      api.serializer = 'json'
   )

   // 导出申报表
   ExportCourseApplyResp ExportCourseApply(1:ExportCourseApplyReq req)(
      api.post = '/education/ExportCourseApply'
      api.serializer = 'json'
   )

   // 导出汇总表
   ExportCourseApplySummaryResp ExportCourseApplySummary(1:ExportCourseApplySummaryReq req)(
      api.post = '/education/ExportCourseApplySummary'
      api.serializer = 'json'
   )

   // 一键审核
   OneKeyApproveCourseApplyResp OneKeyApproveCourseApply(1:OneKeyApproveCourseApplyReq req)(
      api.post = '/education/OneKeyApproveCourseApply'
      api.serializer = 'json'
   )


   // 获取下拉框数据
   GetSelectDataResp GetSelectData(1:GetSelectDataReq req)(
      api.post = '/education/GetSelectData'
      api.serializer = 'json'
   )

   // 获取教学人员基本信息
   GetTeacherInfoListResp GetTeacherInfoList(1:GetTeacherInfoListReq req)(
      api.post = '/education/GetTeacherInfoList'
      api.serializer = 'json'
   )

   // 导入教师信息
   ImportTeacherInfoResp ImportTeacherInfo(1:ImportTeacherInfoReq req)(
      api.post = '/education/ImportTeacherInfo'
      api.serializer = 'json'
   )

   // 更新教师信息
   UpdateTeacherInfoResp UpdateTeacherInfo(1:UpdateTeacherInfoReq req)(
      api.post = '/education/UpdateTeacherInfo'
      api.serializer = 'json'
   )

   // 设置是否启用
   SetTeacherInfoStatusResp SetTeacherInfoStatus(1:SetTeacherInfoStatusReq req)(
      api.post = '/education/SetTeacherInfoStatus'
      api.serializer = 'json'
   )

   // 排序教学人员信息
   OrderTeacherInfoResp OderTeacherInfo(1:OrderTeacherInfoReq req)(
      api.post = '/education/OrderTeacherInfo'
      api.serializer = 'json'
   )

    // 更新菜单
    UpdateMenuResp UpdateMenu(1:UpdateMenuReq req);

    // 删除菜单
    DeleteMenuResp DeleteMenu(1:DeleteMenuReq req);

    // 获取token
    GetTokenResp GetToken(1:GetTokenReq req);

    // 修改角色
    UpdateRoleResp UpdateRole(1:UpdateRoleReq req)(
        api.post = '/education/UpdateRole'
        api.serializer = 'json'
    );

    // 设置角色状态
    SetRoleStatusResp SetRoleStatus(1:SetRoleStatusReq req)(
        api.post = '/education/SetRoleStatus'
        api.serializer = 'json'
    )

    // 删除角色
    DeleteRoleResp DeleteRole(1:DeleteRoleReq req)(
        api.post = '/education/DeleteRole'
        api.serializer = 'json'
    )

    // 删除教研室
    DeleteOfficeResp DeleteOffice(1:DeleteOfficeReq req)(
        api.post = '/education/DeleteOffice'
        api.serializer = 'json'
    )
    // 更新教研室
    UpdateOfficeResp UpdateOffice(1:UpdateOfficeReq req)(
        api.post = '/education/UpdateOffice'
        api.serializer = 'json'
    )
    // 修改用户
    UpdateUserResp UpdateUser(1:UpdateUserReq req)(
        api.post = '/education/UpdateUser'
        api.serializer = 'json'
    )

    // 重设密码
    ResetPasswordResp ResetPassword(1:ResetPasswordReq req)(
        api.post = '/education/ResetPassword'
        api.serializer = 'json'
    )

    //  删除教学人员基本信息
    DeleteTeacherInfoResp DeleteTeacherInfo(1:DeleteTeacherInfoReq req)(
        api.post = '/education/DeleteTeacherInfo'
        api.serializer = 'json'
    )

    // 创建教学人员基本信息
    CreateTeacherInfoResp CreateTeacherInfo(1:CreateTeacherInfoReq req)(
        api.post = '/education/CreateTeacherInfo'
        api.serializer = 'json'
    )

    // 导出教学人员基本信息
    ExportTeacherInfoResp ExportTeacherInfo(1:ExportTeacherInfoReq req)(
        api.post = '/education/ExportTeacherInfo'
        api.serializer = 'json'
    )

    //
}

// =================req\resp===============================

struct ExportTeacherInfoReq {
   1: list<i32> ids(go.tag='json:"ids"')
}

struct ExportTeacherInfoResp {
    1: string task_key(go.tag='json:"task_key"');
}


struct CreateTeacherInfoReq {
    1: string name(go.tag='json:"name" binding:"required"'); // 姓名
    2: string department(go.tag='json:"department" binding:"required"'); // 部门
    3:i32 uid (go.tag='json:"uid" binding:"required"'); // 用户id
    4:i32 office_id(go.tag='json:"office_id" binding:"required"') // 教研室id
    5 :string user_name(go.tag='json:"user_name" binding:"required"') // 学号
    6: string duties(go.tag='json:"duties" '); // 职务
    7: string appoint_time(go.tag='json:"appoint_time" ') // 任职时间
    8: string position_level(go.tag='json:"position_level" ') // 岗位等级
    9: string cposition_time(go.tag='json:"cposition_time" ') // 现聘岗位时间
    10: i64 remunerate(go.tag='json:"remunerate" ') // 岗位等级课酬标准
    11: string id_category(go.tag='json:"id_category" ') // 身份类别
    12: i32 is_external(go.tag='json:"is_external" '); // 是否外聘
}

struct CreateTeacherInfoResp {
}

struct DeleteTeacherInfoReq {
    1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteTeacherInfoResp {
    1: i32 count(go.tag='json:"count"');
}

struct ResetPasswordReq     {
    1: i32 id(go.tag='json:"id" binding:"required"');
}

struct ResetPasswordResp {}

struct UpdateUserReq{
    1: i32 id(go.tag='json:"id" binding:"required"');
    2: string user_name(go.tag='json:"user_name" binding:"required"');
    3: string nick_name(go.tag='json:"nick_name" binding:"required"');
    4: string email(go.tag='json:"email"');
    5: string mobile(go.tag='json:"mobile"');

}

struct UpdateUserResp {}



struct UpdateOfficeReq {
    1: string name(go.tag='json:"name" binding:"required"');
    2: string description(go.tag='json:"description"');
    3: string name2(go.tag='json:"name2"')
    4: i32 order(go.tag='json:"order"')
    5: i32 id (go.tag='json:"id" binding:"required"');

}
struct UpdateOfficeResp {}

struct DeleteOfficeReq {
    1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}
struct DeleteOfficeResp {}

struct DeleteRoleReq {
    1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteRoleResp {}


struct SetRoleStatusReq {
    1: list<base.StatusValue> items(go.tag='json:"items" binding:"required"');
}
struct SetRoleStatusResp {}

struct UpdateRoleReq {
  1: string name(go.tag='json:"name" binding:"required"');
  2: string description(go.tag='json:"description"');
  3: i32 id(go.tag='json:"id" binding:"required"');
}

struct UpdateRoleResp {}



struct GetTokenReq {
  1: string username(go.tag='json:"username" binding:"required"');
  2: i32 app_id(go.tag='json:"app_id" binding:"required"');
}

struct GetTokenResp {
  1: string token(go.tag='json:"token"');
}

struct GetTeacherInfoListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');

}

enum GetTeacherInfoListReqOption {
   id = 1;
   name = 2;
   office_id = 3;
   duties = 4;
   id_category = 5;
   user_name = 6;
}

struct GetTeacherInfoListResp {
  1: list<ModelTeacherInfo> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<i32,ModelTeacherOffice> office_map(go.tag='json:"office_map"');
}


struct ImportTeacherInfoReq {
  1: string file_path(go.tag='json:"file_path" binding:"required"');
}

struct ImportTeacherInfoResp {
  1: string task_key(go.tag='json:"task_key"');
}


struct  UpdateTeacherInfoReq   {

  1: i32 uid(go.tag='json:"id" binding:"required"');
  2: i32  office_id(go.tag='json:"office_id" binding:"required"'); // 教研室id
  3: string duties(go.tag='json:"duties"'); // 职务
  4: string appoint_time(go.tag='json:"appoint_time"'); // 任职时间
  5: string position_level(go.tag='json:"position_level"'); // 岗位等级
  6: string cposition_time(go.tag='json:"cposition_time"'); // 现聘岗位时间
  7: i64 remunerate(go.tag='json:"remunerate"'); // 岗位等级课酬标准
  8: string id_category(go.tag='json:"id_category"'); // 身份类别
  9: i32 is_external(go.tag='json:"is_external" binding:"required"'); // 是否外聘
  10: i32 order(go.tag='json:"order"');
  11: string department(go.tag='json:"department"'); // 教师所属部门
}


struct UpdateTeacherInfoResp {

}

struct SetTeacherInfoStatusReq {
  1: list<SetTeacherInfoStatusReq_Value> item(go.tag='json:"item" binding:"required"');
}

struct SetTeacherInfoStatusReq_Value {
   1: i32 id(go.tag='json:"id"');
   2: i32 value(go.tag='json:"value"');
}

struct OrderTeacherInfoReq {

}


struct SetTeacherInfoStatusResp {}

struct OrderTeacherInfoResp {
  1: string task_key(go.tag='json:"task_key"');
}


struct CreateAppReq {
  1: string school_name(go.tag='json:"school_name" binding:"required"'); // 学校名称
  2: string  college_name(go.tag='json:"college_name" binding:"required"');  //学院名称
}


struct CreateAppResp {
  1: ModelApp app(go.tag='json:"app"');
  2: ModelUser root(go.tag='json:"user"');
  3: list<ModelRole> roles(go.tag='json:"roles"');
}

struct LoginReq {
  1: string user_name(go.tag='json:"username" binding:"required"');
  2: string password(go.tag='json:"password" binding:"required"');
}

struct LoginResp {
  1: string token(go.tag='json:"token"');
  2: ModelUser user(go.tag='json:"user"');
  3: list<string> roles(go.tag='json:"roles"');
}


struct GetUserListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetUserListOption {
   id = 1;
   nick_name = 2;
   user_name = 3;
   email = 4;
   mobile = 5;
}

struct GetUserListResp {
  1: list<ModelUser> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<i32, list<ModelRole>> role_map(go.tag='json:"role_map"');
}


struct GetRoleListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
}
enum GetRoleListOption {
   id = 1;
   name = 2;
   str_role_id = 3;
}

struct GetRoleListResp {
  1: list<ModelRole> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetMenuReq {}

struct GetMenuResp {
  1: list<ModelMenu> list(go.tag='json:"list"');
}

struct GetPermissionListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetPermissionListOption {
   id = 1;
   name = 2;
   str_permission_id = 3;
}

struct GetPermissionListResp {
  1: list<ModelPermission> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}


struct CreateUserResp {
  1: ModelUser user(go.tag='json:"user"');
  2: list<string> roles(go.tag='json:"roles"');
}

struct CreateUserReq {
   1: string user_name(go.tag='json:"username" binding:"required"'); // 用户名
   2: string password(go.tag='json:"password" binding:"required"');  // 密码
   3: string nick_name(go.tag='json:"nick_name" binding:"required"'); // 昵称
   4: string email(go.tag='json:"email"'); // 邮箱
   5: string mobile(go.tag='json:"mobile"'); // 手机号
   6: string avatar(go.tag='json:"avatar"'); // 头像
   7: list<i32> role_ids(go.tag='json:"role_ids" binding:"required"'); // 角色id
}

struct SetUserRoleReq {
   1: i32 user_id(go.tag='json:"user_id" binding:"required"');
   2: list<i32> role_id(go.tag='json:"role_id"')

}

struct SetUserRoleResp {}

struct SetRolePermissionReq {
   1: i32 role_id(go.tag='json:"role_id" binding:"required"');
   2: list<i32> permission_id(go.tag='json:"permission_id"')

}

struct SetRolePermissionResp {}


struct SetRoleMenuReq {
   1: i32 role_id(go.tag='json:"role_id" binding:"required"');
   // 新增菜单
   2: list<i32> menu_id(go.tag='json:"menu_id" ')

}

struct SetRoleMenuResp {}


struct CreateMenuReq {
   1: string name(go.tag='json:"name" binding:"required"');
   2: string path(go.tag='json:"path" binding:"required"');
   3: string component(go.tag='json:"component" binding:"required"');
   4: string redirect(go.tag='json:"redirect"');
   5: i32 parent_id(go.tag='json:"parent_id"');
    6: Meta meta(go.tag='json:"meta"');
}
struct CreateMenuResp {}


struct CreateRoleReq {
   1: string name(go.tag='json:"name" binding:"required"');
   2: string description(go.tag='json:"description"');
}
struct CreateRoleResp {
   1: ModelRole role;
}


struct CreatePermissionReq {
   1: string name(go.tag='json:"name" binding:"required"');
   2: string description(go.tag='json:"description"');
}

struct CreatePermissionResp {
   1: ModelPermission permission;
}


struct CreateOfficeReq{
  1: string name(go.tag='json:"name" binding:"required"');
  2: string description(go.tag='json:"description"');
  3: i32 app_id(go.tag='json:"app_id" binding:"required"');
  4: string name2(go.tag='json:"name2"');
  5: i32 order(go.tag='json:"order"');
}

struct CreateOfficeResp{

}

struct GetOfficeListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetOfficeListOption{
    name= 1;
    name2 = 2;
    id = 3;
    category = 4;
}

struct GetOfficeListResp{
  1: list<ModelTeacherOffice> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct DeleteUserResp{}

struct DeleteUserReq{
   1: i32 user_id(go.tag='json:"user_id" binding:"required"');
}

struct GetMenuListReq {
  1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetMenuListOption {
   id = 1,
   name = 2,
   path = 3,
   component = 4,
   redirect = 5,
   parent_id = 6,
   title = 7,
   created_at = 8,
}


struct GetMenuListResp {
   1: list<ModelMenu> list(go.tag='json:"list"');
   2: base.Paginate paginate;
}


struct ImportCourseApplyReq{
   1: string file_upload_id(go.tag='json:"file_upload_id" binding:"required"'); // 文件上传id
   2: string academic_year(go.tag='json:"academic_year" binding:"required"');  // 学年
   3: string semester(go.tag='json:"semester" binding:"required"'); // 学期
}


struct ImportUserReq{
   1: string file_upload_id(go.tag='json:"file_upload_id" binding:"required"'); // 文件上传id
}

struct ImportUserResp{
   1: string task_key(go.tag='json:"task_key"'); // 任务key
}

struct ImportCourseApplyResp {
   1: string task_key(go.tag='json:"task_key"');
}

struct GetCourseApplyListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetCourseApplyListOption{
   id = 1;
   course_name = 2; // 课程名称
   academic_year = 3; // 学年
   semester = 4; // 学期
   department = 5;// 部门
   teacher_name = 6;  // 老师
   office_id = 7; // 院系id
   class_id = 8; // 班级id
   course_nature = 9; // 课程性质
   is_fill = 10; // 是否已填报
}

struct GetCourseApplyListResp{
   1: list<ModelCourseApply> list(go.tag='json:"list"');
   2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetSelfCourseApplyListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetSelfCourseApplyListOption{
   id = 1;
   course_name = 2; // 课程名称
   academic_year = 3; // 学年
   semester = 4; // 学期
   course_nature = 9; // 课程性质
}

struct GetSelfCourseApplyListResp{
  1: list<ModelCourseApply> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct DeleteCourseApplyReq{
   1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteCourseApplyResp{}


struct ApproveCourseApplyReq{
   1: i32 id(go.tag='json:"id" binding:"required"');
   2: i32 examination(go.tag='json:"examination" binding:"required"'); // 审核状态
   3: string opinion(go.tag='json:"opinion"'); // 审核意见
}

struct ApproveCourseApplyResp  {

}

struct ResetCourseApplyReq{
   1: i32 id(go.tag='json:"id" binding:"required"');
}

struct ResetCourseApplyResp{
}

struct FillCourseApplyReq{
  1: i32 id(go.tag='json:"id" binding:"required"'); // id
  2: string online_platform_name(go.tag='json:"online_platform_name" binding:"required"') // 在线平台名称
  3: string other_online_platform_name(go.tag='json:"other_online_platform_name"') // 其他线上授课平台名称
  4: string teaching_resource_name(go.tag='json:"teaching_resource_name"') // 专业教学资源库名称
  5:i32 is_build_partner(go.tag='json:"is_build_partner" binding:"required"') //  是否与其他教师共建资源
  6:i32 is_self_property (go.tag='json:"is_self_property" binding:"required"') // 是否校内教师自主知识产权
  7: i32 total_hours (go.tag='json:"total_hours" binding:"required"') // 任务总学时
  8: string team_teacher_name(go.tag='json:"team_teacher_name" ') // 团队教师姓名
  9: string resource_build_partner (go.tag='json:"resource_build_partner"') // 资源共建分工情况
  10: string  remark (go.tag='json:"remark"') // 备注
  11:string url (go.tag='json:"url"'); // 教学资源url
  12:string isnot_account (go.tag='json:"isnot_account"'); // 非三大平台须填写登录账户
  13:string isnot_password(go.tag='json:"isnot_password"') // 非三大平台须填写登录密码
  14:i32 is_use_other_resource(go.tag='json:"is_use_other_resource"'); // 是否使用其他信息化教学资源
  15:string other_resource_name(go.tag='json:"other_resource_name"'); // 其他教学资源名称
}


struct FillCourseApplyResp{}


struct ExportSelfCheckTableReq {
  1: i32 course_id(go.tag='json:"course_id" binding:"required"'); // 课程id
}

struct ExportSelfCheckTableResp {
  1: string url(go.tag='json:"url"'); // 下载地址
  2: string file_name(go.tag='json:"file_name"'); // 文件名
}

struct ExportResponsibilityReq {
  1: string teacher_name(go.tag='json:"teacher_name"');
  2: string academic_year(go.tag='json:"academic_year"');
  3: string semester(go.tag='json:"semester"');
}

struct ExportResponsibilityResp {
  1: string task_key(go.tag='json:"task_key"');
}

struct ExportAllSelfCheckTableReq  {
  // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');
}

struct ExportAllSelfCheckTableResp {
  1: string task_key(go.tag='json:"task_key"');
}

struct UpdateCourseApplyReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
  2: string course_name(go.tag='json:"course_name" binding:"required"'); // 课程名称
  3: string course_nature(go.tag='json:"course_nature"'); // 课程性质
  4: i32 office_id(go.tag='json:"office_id"'); // 教研室id
  5: i32 class_id(go.tag='json:"class_id"'); // 班级id
  6: string department (go.tag='json:"department"'); //开课部门
  7: string teach_class_name(go.tag='json:"teach_class_name"') // 教学班名称
  8: string teacher_name(go.tag='json:"teacher_name"') // 教师姓名
  9: i64 total_hours(go.tag='json:"total_hours"') // 总学时
  10 :i64 total_students (go.tag='json:"total_students"') // 学生人数
  11: double credit (go.tag='json:"credit"') // 学分
  12: string start_week (go.tag='json:"start_week"') // 起始周

  // ==================
  13:string online_platform_name(go.tag='json:"online_platform_name"');// 线上授课平台名称
  14:string teacher_id (go.tag='json:"teacher_id" '); // 授课教师id
  15:string other_online_platform_name(go.tag='json:"other_online_platform_name" '); // 其他线上授课平台名称
  16:string teaching_resource_name(go.tag='json:"teaching_resource_name" '); // 专业教学资源库名称
  17:i32 is_build_partner(go.tag='json:"is_build_partner"'); // 是否与其他教师共建资源
  18:i32 is_self_property(go.tag='json:"is_self_property" '); // 是否校内教师自主知识产权
  19:i32 is_use_other_resource(go.tag='json:"is_use_other_resource" '); // 是否使用其他信息化教学资源
  20:string other_resource_name(go.tag='json:"other_resource_name" '); // 其他教学资源名称
  21:string resource_build_partner(go.tag='json:"resource_build_partner"');   // 资源共建分工情况
  22:string team_teacher_name(go.tag='json:"team_teacher_name" '); // 团队老师
  23:string remark(go.tag='json:"remark"'); // 备注
  24:string url (go.tag='json:"url" '); // 教学资源url
  25:string isnot_account (go.tag='json:"isnot_account" '); // 非三大平台须填写登录账户
  26:string isnot_password(go.tag='json:"isnot_password"') // 非三大平台须填写登录密码
}

struct UpdateCourseApplyResp {

}

struct ExportCourseApplyReq  {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  2: string semester(go.tag='json:"semester" binding:"required"');
  3: list<i32> fields(go.tag='json:"fields"'); // 导出字段
}

struct ExportCourseApplyResp {
  1: string task_key(go.tag='json:"task_key"');
}

struct ExportCourseApplySummaryReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  2: string semester(go.tag='json:"semester" binding:"required"');
}

struct ExportCourseApplySummaryResp {
  1: string task_key(go.tag='json:"task_key"');
}

struct OneKeyApproveCourseApplyReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"'); // 学年
  2: string semester(go.tag='json:"semester" binding:"required"'); // 学期
}

struct OneKeyApproveCourseApplyResp {
    1: string task_key(go.tag='json:"task_key"'); // 任务key
}

struct GetClassListReq{
    1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetClassListReqOption {
    id = 1; // id
    name = 2; // 班级名称
}

struct GetClassListResp{
    1: list<ModelClass> list(go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetSelectDataReq{}

const list<string> online_platform = ["学堂云网络教学平台","职教云平台","Blackboard 网络教学平台","专业教学资源库","慕课","其他","无"];
const list<string> order_online_platform = ["精品（在线）开放课程","微课","私播课"];


struct GetSelectDataResp{
    1: list<string>  online_platform(go.tag='json:"online_platform"'); // 线上授课平台名称
    2: list<string>  order_online_platform(go.tag='json:"order_online_platform"');//  其他授课平台名称
    3: list<string>  course_nature(go.tag='json:"course_nature"');  // 课程性质
    4: list<string>   academic_year(go.tag='json:"academic_year"');    // 学年
    5: list<string>   semester(go.tag='json:"semester"'); // 学期
    6: map<i32,string>   field_type(go.tag='json:"field_type"'); // 课程申请表导出字段
    7: string  current_academic_year(go.tag='json:"current_academic_year"'); // 当前学年
    8: string  current_semester(go.tag='json:"current_semester"'); // 当前学期
}


struct GetUserInfoReq {}

struct GetUserInfoResp {
    1: i32 id(go.tag='json:"user_id"'); // 用户id
    2: string user_name(go.tag='json:"user_name"'); // 用户名
    3: string email(go.tag='json:"email"'); // 邮箱
    4: string mobile(go.tag='json:"mobile"'); // 手机号
    5: list<string> roles(go.tag='json:"roles"'); // 角色
    6: string nickname(go.tag='json:"nickname"'); // 昵称
    7: string avatar(go.tag='json:"avatar"'); // 头像
    8: i32 app_id(go.tag='json:"app_id"');
}

struct GetAuthCodeReq {}


struct GetAuthCodeResp {
    1: list<string> code(go.tag='json:"code"'); // 权限码
}

struct DeleteMenuReq {
  1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}
struct DeleteMenuResp {}



struct UpdateMenuReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
  2: string name(go.tag='json:"name"');
  3: string path(go.tag='json:"path"');
  4: string component(go.tag='json:"component"');
  5: string redirect(go.tag='json:"redirect"');
  6: i32 parent_id(go.tag='json:"parent_id"');
  7: Meta meta(go.tag='json:"meta"');
}
struct UpdateMenuResp {}






const map<i32, string> CourseApplyFieldMap = {
     1: "开课部门",
     2: "课程所属教研室"
     3: "课程名称",
     4: "教学班名称",
     5: "行政班名称",
     6: "教师名称",
     7: "任务总学时",
     8: "选课人数",
     9: "学分",
     10: "课程性质",
     11: "起始周",
     12: "线上授课平台名称",
     13: "是否与其他教师共建资源",
     14: "是否校内教师自主知识产权",
     15: "资源共建分工情况",
     16: "备注",
     17: "课程资源准确网址",
     18: "非三大平台须填写登录账户和密码",
     19: "教研室主任审查意见"
}

enum CourseApplyField {
    department= 1
    office_id = 2// 教研室
    course_name = 3 // 课程名称
    teach_class_name  = 4// 教学班名称
    class_id = 5 // 班级
    teacher_name = 6 // 授课教师
    total_hours =7//任务总学时
    total_students = 8 // 选课人数
    credit = 9 //学分
    course_nature = 10 // 课程性质
    start_week = 11 // 起始周
    online_platform_name = 12// 线上授课平台名称
    is_build_partner = 13 // 是否与其他教师共建资源
    is_self_property = 14 // 是否校内教师自主知识产权
    resource_build_partner= 15  // 资源共建分工情况
    remark = 16 // 备注
    url= 17 // 课程资源准确网址
    isnot_account_password  =18 // 非三大平台须填写登录账户
    opinion = 19 // 教研室主任审查意见
}







// =================Model========================

// 应用表
struct ModelApp {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string school_name(go.tag='gorm:"column:school_name" json:"school_name"'); // 学校名称
  6: string  college_name(go.tag='gorm:"column:college_name" json:"college_name"');  //学院名称
  8: string app_key(go.tag='gorm:"column:app_key" json:"app_key"'); // 应用key
  9: string app_secret(go.tag='gorm:"column:app_secret" json:"app_secret"'); // 应用密钥
  10: i32 school_code(go.tag='gorm:"column:school_code" json:"school_code"'); // 学校代码
  11: bool status(go.tag='gorm:"column:status;default:1" json:"status"'); // 状态
}
// 用户表
struct ModelUser {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string user_name(go.tag='gorm:"column:user_name" json:"user_name"');
  6: string password(go.tag='gorm:"column:password" json:"-"');
  7: string nick_name(go.tag='gorm:"column:nick_name" json:"nick_name"');
  8: string mobile(go.tag='gorm:"column:mobile" json:"mobile"');
  9: string email(go.tag='gorm:"column:email" json:"email"');
  10: string avatar(go.tag='gorm:"column:avatar" json:"avatar"');
  11: i32 app_id(go.tag='gorm:"column:app_id" json:"app_id"');
}

// 角色表
struct ModelRole {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='gorm:"column:name" json:"name"');
  6: string description(go.tag='gorm:"column:description" json:"description"');
  7: bool status(go.tag='gorm:"column:status;default:true" json:"status"');
  8: string str_role_id(go.tag='json:"str_role_id" gorm:"column:str_role_id"');
  9: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"');
}

// 菜单表
struct ModelMenu {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string component(go.tag='json:"component" gorm:"column:component;default:BasicLayout"'); // 组件
  6: Meta mete(go.tag='json:"meta" gorm:"column:meta;embedded"');
  7: string name (go.tag='json:"name" gorm:"column:name"');
  8: string path (go.tag='json:"path" gorm:"column:path"');
  9: string redirect (go.tag='json:"redirect" gorm:"column:redirect"');
  10: i32 parent_id (go.tag='json:"parent_id" gorm:"column:parent_id"');
  11: list<ModelMenu> children (go.tag='json:"children" gorm:"-"');
  12: bool status(go.tag='json:"status" gorm:"column:status;default:true"')
}

struct Meta {
    1:string title(go.tag='json:"title"');
    2:i32 order(go.tag='json:"order"');
    3:string icon(go.tag='json:"icon"');
    4:string badge(go.tag='json:"badge"');
    5:string active_icon(go.tag='json:"active_icon"');
    6:string iframe_src(go.tag='json:"iframe_src"');
    7:bool affixTab(go.tag='json:"affixTab" gorm:"column:affix_tab;default:false"');
    8:string activePath(go.tag='json:"activePath"');
    9:string badgeVariants(go.tag='json:"badgeVariants"');
    10:string badgeType(go.tag='json:"hide"');
    11:string badgeText(go.tag='json:"badgeText"');
    12:bool hideChildrenInMenu(go.tag='json:"hideChildrenInMenu" gorm:"column:hide_children_in_menu;default:false"');
    13:bool hideInTab(go.tag='json:"hideInTab" gorm:"column:hide_in_tab;default:false"');
    14:bool hideInMenu(go.tag='json:"hideInMenu" gorm:"column:hide_in_menu;default:false"');
    15:bool keepAlive(go.tag='json:"keepAlive" gorm:"column:keep_alive;default:false"');
    16:string activeIcon(go.tag='json:"activeIcon"');
    17:bool hideInBreadcrumb(go.tag='json:"hideInBreadcrumb" gorm:"column:hide_in_breadcrumb;default:false"');
    18:bool ignoreAccess(go.tag='json:"ignoreAccess" gorm:"column:ignore_access;default:false"');
    19:string link(go.tag='json:"link"');
    20:bool openInNewWindow(go.tag='json:"openInNewWindow"  gorm:"column:open_in_new_window;default:false"');
    21:i32 maxNumOfOpenTab(go.tag='json:"maxNumOfOpenTab"');
}

// 权限表
struct ModelPermission{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='json:"name" gorm:"column:name"');
  6: string description(go.tag='json:"description" gorm:"column:description"');
  7: string str_permission_id(go.tag='json:"str_permission_id" gorm:"column:str_permission_id"');
  8: bool status(go.tag='json:"status" gorm:"column:status;default:true"');
}

// 用户角色关联表
struct ModelUserRole {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 user_id;
  6: i32 role_id;
  7: i32 app_id;
}

// 角色权限关联表
struct ModelRolePermission{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 role_id;
  6: i32 permission_id;
  7: i32 app_id;
}

// 角色菜单关联表
struct ModelRoleMenu{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 role_id;
  6: i32 menu_id;
  7: i32 app_id;
}


// 教研室表
struct ModelTeacherOffice{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='json:"name" gorm:"column:name"'); // 名称
  6: string description(go.tag='json:"description" gorm:"column:description"'); // 描述
  7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );  // 应用id
  8: string name2(go.tag='json:"name2" gorm:"column:name2"'); //  教研室名称（现在不使用）
  9: i32 order(go.tag='json:"order" gorm:"column:order"'); // 排序
  10: i32 category(go.tag='json:"category" gorm:"column:category"'); // 用于导出课程资源汇总表使用
}

enum ModelTeacherOffice_Category {
  Unknown = 0, // 未知
  CourseApply = 1, // 可以导出汇总表的类别
  TeacherInfo = 2 // 不同不可导出
}


enum BooleanType {
  Unknown = 0;
  True = 1;
  False = 2;
}


enum IsActiveType{
  Unknown = 0; //
  Active = 1; // 激活
  Inactive = 2; // 冻结
}
enum IsExternalType{
  Unknown = 0;
  External = 1; // 外聘
  Internal = 2; // 不是外聘
}


// 职务表
struct ModelDuties{
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string name(go.tag='json:"name" gorm:"column:name"');
    6: string description(go.tag='json:"description" gorm:"column:description"');
    7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
    8: string order (go.tag='json:"order" gorm:"column:order"');
}

// 身份类别表
struct ModelCategory {
   1: i32 id (go.tag='gorm:"column:id" json:"id"');
   2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string name(go.tag='json:"name" gorm:"column:name"');
    6: string description(go.tag='json:"description" gorm:"column:description"');
    7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
}

// 课程表
struct ModelCourse{
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"'); // 学年
    6: string term(go.tag='json:"term" gorm:"column:term"'); // 学期
}

// 班级表
struct ModelClass {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string name(go.tag='json:"name" gorm:"column:name"');
    6: string description(go.tag='json:"description" gorm:"column:description"');
    7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
}


// 课程申请表
struct ModelCourseApply {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string department(go.tag='json:"department" gorm:"column:department"'); // 开课部门
    6: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"'); // 学年
    7: string semester(go.tag='json:"semester" gorm:"column:semester"'); // 学期
    8: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' ); // 学院id
    9: i32 office_id(go.tag='json:"office_id" gorm:"column:office_id"'); // 教研室id
    10: string course_name(go.tag='json:"course_name" gorm:"column:course_name"'); // 课程名称
    11: i32 class_id(go.tag='json:"class_id" gorm:"column:class_id"'); // 班级id
    12:string teach_class_name(go.tag='json:"teach_class_name" gorm:"column:teach_class_name"'); // 教学班名称
    13:string teacher_name(go.tag='json:"teacher_name" gorm:"column:teacher_name"') // 授课教师id
    14:i64 total_hours(go.tag='json:"total_hours" gorm:"column:total_hours"') //任务总学时
    15:i64 total_students(go.tag='json:"total_students" gorm:"column:total_students"') // 选课人数
    16:double credit(go.tag='json:"credit" gorm:"column:credit"') //学分
    17:string course_nature(go.tag='json:"course_nature" gorm:"column:course_nature"'); // 课程性质
    18:string start_week(go.tag='json:"start_week" gorm:"column:start_week"'); // 起始周
    19:string online_platform_name(go.tag='json:"online_platform_name" gorm:"column:online_platform_name"');// 线上授课平台名称
    20:string teacher_id (go.tag='json:"teacher_id" gorm:"column:teacher_id"'); // 授课教师id
    21:string other_online_platform_name(go.tag='json:"other_online_platform_name" gorm:"column:other_online_platform_name"'); // 其他线上授课平台名称
    22:string teaching_resource_name(go.tag='json:"teaching_resource_name" gorm:"column:teaching_resource_name"'); // 专业教学资源库名称
    23:i32 is_build_partner(go.tag='json:"is_build_partner" gorm:"column:is_build_partner;default:2"'); // 是否与其他教师共建资源
    24:i32 is_self_property(go.tag='json:"is_self_property" gorm:"column:is_self_property;default:2"'); // 是否校内教师自主知识产权
    25:i32 is_use_other_resource(go.tag='json:"is_use_other_resource" gorm:"column:is_use_other_resource;default:2"'); // 是否使用其他信息化教学资源
    26:string other_resource_name(go.tag='json:"other_resource_name" gorm:"column:other_resource_name;type:text"'); // 其他教学资源名称
    27:string resource_build_partner(go.tag='json:"resource_build_partner" gorm:"column:resource_build_partner"');   // 资源共建分工情况
    28:string team_teacher_name(go.tag='json:"team_teacher_name" gorm:"column:team_teacher_name"'); // 团队老师
    29:string remark(go.tag='json:"remark" gorm:"column:remark;type:text"'); // 备注
    30:string url (go.tag='json:"url" gorm:"column:url;type:text"'); // 教学资源url
    31:string isnot_account (go.tag='json:"isnot_account" gorm:"column:isnot_account"'); // 非三大平台须填写登录账户
    32:string isnot_password(go.tag='json:"isnot_password" gorm:"column:isnot_password"') // 非三大平台须填写登录密码
    33:string opinion(go.tag='json:"opinion" gorm:"column:opinion"') // 教研室主任审查意见
    34:i32 examination (go.tag='json:"examination" gorm:"column:examination"') // 教研室主任审查
    35:i32 is_active(go.tag='json:"is_active" gorm:"column:is_active;default:1"') // 是否激活
    36: bool is_fill(go.tag='json:"is_fill" gorm:"column:is_fill;default:false"')  // 是否填写
}


//  课程性质
struct ModelCourseNature {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string name(go.tag='json:"name" gorm:"column:name"');
}



// 操作日志
struct ModelOperationLogs {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string user_name(go.tag='json:"user_name" gorm:"column:user_name"');
    6: string operation(go.tag='json:"operation" gorm:"column:operation"'); // 操作
    7: string object_type(go.tag='json:"object_type" gorm:"column:object_type"'); // 对象类型
    8: string object_id(go.tag='json:"object_id" gorm:"column:object_id"'); // 对象id
    9: string details(go.tag='json:"details" gorm:"column:details;type:text"'); // 详情
    10: string ip_address(go.tag='json:"ip_address" gorm:"column:ip_address"'); // ip地址
    11: i32 status(go.tag='json:"status" gorm:"column:status"'); // 状态
    12: i32 app_id (go.tag='json:"app_id" gorm:"column:app_id"') // 学院id
}


// 教学人员基本信息
struct ModelTeacherInfo {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string department(go.tag='json:"department" gorm:"column:department"'); // 开课部门
  6: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' ); // 学院id
  7: i32 uid (go.tag='json:"uid" gorm:"column:uid"'); // 用户id
  8: string name(go.tag='json:"name" gorm:"column:name"'); // 姓名
  9: i32 office_id(go.tag='json:"office_id" gorm:"column:office_id"'); // 教研室id
  10: string duties(go.tag='json:"duties" gorm:"column:duties"'); // 职务
  11: string appoint_time(go.tag='json:"appoint_time" gorm:"column:appoint_time"') // 任职时间
  12: string position_level(go.tag='json:"position_level" gorm:"column:position_level"') // 岗位等级
  13: string cposition_time(go.tag='json:"cposition_time" gorm:"column:cposition_time"') // 现聘岗位时间
  14: i64 remunerate(go.tag='json:"remunerate" gorm:"column:remunerate"') //岗位等级课酬标准
  15: string id_category(go.tag='json:"id_category" gorm:"column:id_category"') // 身份类别
  16:i32 is_active(go.tag='json:"is_active" gorm:"column:is_active;default:1"'); // 是否激活
  17 :i32 is_external(go.tag='json:"is_external" gorm:"column:is_external;default:2"') // 是否外聘
  18 :i32 order(go.tag='json:"order" gorm:"column:order;default:1"')  // 排序
  19 :string user_name(go.tag='json:"user_name" gorm:"column:user_name"') // 学号
}
