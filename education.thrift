namespace go education
include "common/base.thrift"


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
  5: string component(go.tag='json:"component" gorm:"column:component;default:BasicLayout"');
  6: Meta mete(go.tag='json:"mate" gorm:"column:meta;embedded"');
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
  5: string name(go.tag='json:"name" gorm:"column:name"');
  6: string description(go.tag='json:"description" gorm:"column:description"');
  7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  8: string name2(go.tag='json:"name2" gorm:"column:name2"');
  9: i32 order(go.tag='json:"order" gorm:"column:order"');
}


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
    7: string term(go.tag='json:"term" gorm:"column:term"'); // 学期
    8: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' ); // 学院id
    9: i32 office_id(go.tag='json:"office_id" gorm:"column:office_id"'); // 教研室id
    10: string course_name(go.tag='json:"course_name" gorm:"column:course_name"'); // 课程名称
    11: i32 class_id(go.tag='json:"class_id" gorm:"column:class_id"'); // 班级id
    12:string teach_class_name(go.tag='json:"teach_name" gorm:"column:teach_name"'); // 教学班名称
    13:string teacher_name(go.tag='json:"teacher_name" gorm:"column:teacher_name"') // 授课教师id
    14:i64 total_hours(go.tag='json:"total_hours" gorm:"column:total_hours"') //任务总学时
    15:i64 total_students(go.tag='json:"total_students" gorm:"column:total_students"') // 选课人数
    16:i64 credit(go.tag='json:"credit" gorm:"column:credit"') //学分
    17:string course_nature(go.tag='json:"course_nature" gorm:"column:course_nature"'); // 课程性质
    18:i32 start_week(go.tag='json:"start_week" gorm:"column:start_week"'); // 起始周
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
    35:bool is_active(go.tag='json:"is_active" gorm:"column:is_active"') // 是否激活
}

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
  GetMenuResp GetMenuList(1:GetMenuReq req)(
     api.post = '/education/GetMenuList'
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
    2: i32 id(go.tag='json:"id"');
}

struct GetUserListResp {
  1: list<ModelUser> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<i32, ModelRole> role_map(go.tag='json:"role_map"');
}


struct GetRoleListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
    2: i32 id(go.tag='json:"id"');
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
    2: i32 id(go.tag='json:"id"');
}

struct GetPermissionListResp {
  1: list<ModelPermission> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}


struct CreateUserResp {
  1: ModelUser user(go.tag='json:"user"');
}

struct CreateUserReq {

}

struct SetUserRoleReq {
   1: i32 user_id(go.tag='json:"user_id" binding:"required"');
   2: list<i32> role_id(go.tag='json:"role_id" binding:"required"')
}

struct SetUserRoleResp {}

struct SetRolePermissionReq {
   1: i32 role_id(go.tag='json:"role_id" binding:"required"');
   2: list<i32> permission_id(go.tag='json:"permission_id" binding:"required"')
}

struct SetRolePermissionResp {}


struct SetRoleMenuReq {
   1: i32 role_id(go.tag='json:"role_id" binding:"required"');
   2: list<i32> menu_id(go.tag='json:"menu_id" binding:"required"')
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
   2: i32 id(go.tag='json:"id"');
}

enum GetOfficeListOption{
    name= 1;
    name2 = 2;
}

struct GetOfficeListResp{
  1: list<ModelTeacherOffice> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct DeleteUserResp{}

struct DeleteUserReq{}