namespace go system

include "common/base.thrift"
include "education.thrift"
include "common.thrift"
include "harbor.thrift"


// 版本发布管理
struct ModelRelease {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string repository_name (go.tag='json:"repository_name"');
  6: string description (go.tag='json:"description"');
  7: string tag (go.tag='json:"tag"');
  // 发布环境
  8: string environment (go.tag='json:"environment"');
}



// Api管理表
struct ModelApi{
 1: i32 id (go.tag='gorm:"column:id;index" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 api_group (go.tag='json:"api_group"');
  6: string path (go.tag='json:"path"');
  7: string method (go.tag='json:"method"');
  8: string description (go.tag='json:"description"');
  9: i32 status (go.tag='json:"method_type"');
}

struct ModelApiGroup {
  1: i32 id (go.tag='gorm:"column:id;index" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string name (go.tag='json:"name"');
}

// 菜单表
struct ModelMenu {
  1: i32 id (go.tag='gorm:"column:id;index" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string component(go.tag='json:"component" gorm:"column:component;default:BasicLayout"');
  6: Meta meta(go.tag='json:"meta" gorm:"column:meta;embedded"');
  7: string name (go.tag='json:"name"');
  8: string path (go.tag='json:"path"');
  9: string redirect (go.tag='json:"redirect"');
  10: i32 parent_id (go.tag='json:"parent_id"');
  11: list<ModelMenu> children (go.tag='json:"children" gorm:"-"');
}

struct MenuItem {
    1: string component(go.tag='json:"component"');
    2: Meta meta(go.tag='json:"meta" gorm:"column:meta;embedded"');
    3: string name (go.tag='json:"name"');
    4: string path (go.tag='json:"path"');
    5: string redirect (go.tag='json:"redirect"');
    6:list<MenuItem> children (go.tag='json:"children" gorm:"-"');
}

struct Meta {
    1:string title(go.tag='json:"title"');
    2:i32 order(go.tag='json:"order"');
    3:string icon(go.tag='json:"icon"');
    4:string badge(go.tag='json:"badge"');
    5:string activeIcon(go.tag='json:"activeIcon"');
    6:string iframeSrc(go.tag='json:"iframeSrc"');
    7:bool affixTab(go.tag='json:"affixTab" gorm:"column:affix_tab;default:false"');
    8:string activePath(go.tag='json:"activePath"');
    9:string badgeVariants(go.tag='json:"badgeVariants"');
    10:string badgeType(go.tag='json:"badgeType"');
    11:string badgeText(go.tag='json:"badgeText"');
    12:bool hideChildrenInMenu(go.tag='json:"hideChildrenInMenu" gorm:"column:hide_children_in_menu;default:false"');
    13:bool hideInTab(go.tag='json:"hideInTab" gorm:"column:hide_in_tab;default:false"');
    14:bool hideInMenu(go.tag='json:"hideInMenu" gorm:"column:hide_in_menu;default:false"');
    15:bool keepAlive(go.tag='json:"keepAlive" gorm:"column:keep_alive;default:false"');
    16:bool hideInBreadcrumb(go.tag='json:"hideInBreadcrumb" gorm:"column:hide_in_breadcrumb;default:false"');
    17:bool ignoreAccess(go.tag='json:"ignoreAccess" gorm:"column:ignore_access;default:false"');
    18:string link(go.tag='json:"link"');
    19:bool openInNewWindow(go.tag='json:"openInNewWindow"  gorm:"column:open_in_new_window;default:false"');
    20:i32 maxNumOfOpenTab(go.tag='json:"maxNumOfOpenTab"');
}

enum BadgeVariantsType {
  Default = 1,
  Destructive = 2,
  Primary = 3,
  Success = 4,
  Warning = 5,
}
// 用户表
struct ModelUser {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;

  5: string user_id; // 用户id
  6: string password (go.tag='json:"-"'); // 密码
  7: string mobile;
  8: string email;
  9: string nickname;
  10: string avatar;
  11: bool status;
  12: i32 last_login_at;
  13: string str_user_id;

}
// 角色表
struct ModelRole {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string name;
  6: string description;
  7: bool status;
  8: string str_role_id;
}
// 用户角色关联表
struct ModelUserRole {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 user_id;
  6: i32 role_id;
}

// 权限表
struct ModelPermission{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string name;
  6: string description;
  7: string str_permission_id;
  8: bool status;
}

// 角色权限关联表
struct ModelRolePermission{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 role_id;
  6: i32 permission_id;
}

// 系统服务
service systemservice {
   // 用户登录
   LoginResp Login(1:LoginReq req)(
         api.post = '/system/Login'
         api.serializer = 'json'
   )
   // 创建用户
   CreateUserResp CreateUser(1:CreateUserReq req)(
        api.post = '/system/CreateUser'
        api.serializer = 'json'
   )
   // 创建角色
   CreateRoleResp CreateRole(1:CreateRoleReq req)(
        api.post = '/system/CreateRole'
        api.serializer = 'json'
   )
   // 创建权限
   CreatePermissionResp CreatePermission(1:CreatePermissionReq req)(
        api.post = '/system/CreatePermission'
        api.serializer = 'json'
   )
   // 设置用户角色
   SetUserRoleResp SetUserRole(1:SetUserRoleReq req)(
        api.post = '/system/SetUserRole'
        api.serializer = 'json'
   )
   // 设置角色权限
   SetRolePermissionResp SetRolePermission(1:SetRolePermissionReq req)(
        api.post = '/system/SetRolePermission'
        api.serializer = 'json'
   )
   // 获取菜单
   GetMenuResp GetMenu(1:GetMenuReq req)(
        api.post = '/system/GetMenu'
        api.serializer = 'json'
   )
    // 获取用户信息
    GetUserInfoResp GetUserInfo(1:GetUserInfoReq req)(
       api.post = '/system/GetUserInfo'
       api.serializer = 'json'
    )
    // 获取用户列表
    GetUserListResp GetUserList(1:GetUserListReq req)(
       api.post = '/system/GetUserList'
       api.serializer = 'json'
    )
    //
    GetAuthCodeResp GetAuthCode(1:GetAuthCodeReq req)(
       api.post = '/system/GetAuthCode'
       api.serializer = 'json'
    )
    // 获取菜单列表
    GetMenuListResp GetMenuList(1:GetMenuListReq req)(
       api.post = '/system/GetMenuList'
       api.serializer = 'json'
    )
    // 获取角色列表
    GetRoleListResp GetRoleList(1:GetRoleListReq req)(
       api.post = '/system/GetRoleList'
       api.serializer = 'json'
    )
    // 创建菜单
    CreateMenuResp CreateMenu(1:CreateMenuReq req)(
       api.post = '/system/CreateMenu'
       api.serializer = 'json'
    )

    UpdateMenuResp UpdateMenu(1:UpdateMenuReq req)(
      api.post = '/system/UpdateMenu'
      api.serializer = 'json'
    )
    GetApiListResp GetApiList(1:GetApiListReq req)(
       api.post = '/system/GetApiList'
       api.serializer = 'json'
    )
    DeleteMenuResp DeleteMenu(1:DeleteMenuReq req)(
       api.post = '/system/DeleteMenu'
       api.serializer = 'json'
    )



    // 获取应用列表
    GetAppListResp GetAppList(1:GetAppListReq req)(
       api.post = '/system/GetAppList'
       api.serializer = 'json'
    )

    // 创建应用
    CreateAppResp CreateApp(1:CreateAppReq req)(
       api.post = '/system/CreateApp'
       api.serializer = 'json'
    )

    // 获取应用详情
    GetAppResp GetApp(1:GetAppReq req)(
       api.post = '/system/GetApp'
       api.serializer = 'json'
    )
    // 创建edu用户
    CreateEduUserResp CreateEduUser(1:CreateEduUserReq req)(
       api.post = '/system/CreateEduUser'
       api.serializer = 'json'
    )

    // 获取edu用户列表
    GetEduUserListResp GetEduUserList(1:GetEduUserListReq req)(
       api.post = '/system/GetEduUserList'
       api.serializer = 'json'
    )

     // 获取密码
     GetPasswordResp GetPassword(1:GetPasswordReq req)(
       api.post = '/system/GetPassword'
       api.serializer = 'json'
     )

     // 设置应用角色菜单权限
     SetAppRoleMenuResp SetAppRoleMenu(1:SetAppRoleMenuReq req)(
       api.post = '/system/SetAppRoleMenu'
       api.serializer = 'json'
     )


     // 获取菜单列表
     GetEduMenuListResp GetEduMenuList(1:GetEduMenuListReq req)(
       api.post = '/system/GetEduMenuList'
       api.serializer = 'json'
     )

     // 创建应用菜单
     CreateEduMenuResp CreateEduMenu(1:CreateEduMenuReq req)(
       api.post = '/system/CreateEduMenu'
       api.serializer = 'json'
     )

     // 更新菜单
     UpdateEduMenuResp UpdateEduMenu(1:UpdateEduMenuReq req)(
       api.post = '/system/UpdateEduMenu'
       api.serializer = 'json'
     )

     // 删除菜单
     DeleteEduMenuResp DeleteEduMenu(1:DeleteEduMenuReq req)(
       api.post = '/system/DeleteEduMenu'
       api.serializer = 'json'
     )

     // 删除app
     DeleteAppResp DeleteApp(1:DeleteAppReq req)(
       api.post = '/system/DeleteApp'
       api.serializer = 'json'
     )


     // 设置app状态
     SetAppStatusResp  SetAppStatus(1:SetAppStatusReq req)(
       api.post = '/system/SetAppStatus'
       api.serializer = 'json'
     )

     // 设置菜单状态
     SetEduMenuStatusResp SetEduMenuStatus(1:SetEduMenuStatusReq req)(
       api.post = '/system/SetEduMenuStatus'
       api.serializer = 'json'
     )

     // GetOperationLogs
     GetOperationLogsListResp GetOperationLogsList(1:GetOperationLogsListReq req)(
       api.post = '/system/GetOperationLogsList'
       api.serializer = 'json'
     )

     // 获取edu角色列表
     GetEduRoleListResp GetEduRoleList(1:GetEduRoleListReq req)(
       api.post = '/system/GetEduRoleList'
       api.serializer = 'json'
     )

     // 获取edu角色详情
     GetEduRoleMenuResp GetEduRoleMenu(1:GetEduRoleMenuReq req)(
       api.post = '/system/GetEduRoleMenu'
       api.serializer = 'json'
     )
     // 设置edu用户角色
     SetEduUserRoleResp SetEduUserRole(1:SetEduUserRoleReq req)(
       api.post = '/system/SetEduUserRole'
       api.serializer = 'json'
     )

     // 获取edu用户token
     GetEduUserTokenResp GetEduUserToken(1:GetEduUserTokenReq req)(
       api.post = '/system/GetEduUserToken'
       api.serializer = 'json'
     )

     ResetEduUserPasswordResp ResetEduUserPassword(1:ResetEduUserPasswordReq req)(
       api.post = '/system/ResetEduUserPassword'
       api.serializer = 'json'
     )

     // 获取文件列表
    GetFileListResp GetFileList(1:GetFileListReq req)(
        api.post = '/system/GetFileList'
        api.serializer = 'json'
    )

    // 获取文件
    GetObjectResp GetObject(1:GetObjectReq req)(
        api.post = '/system/GetObject'
        api.serializer = 'json'
    )
    // 删除文件
    DeleteObjectResp DeleteObject(1:DeleteObjectReq req)(
        api.post = '/system/DeleteObject'
        api.serializer = 'json'
    )


    // 获取镜像列表
    GetImageListResp GetImageList(1:GetImageListReq req)(
        api.post = '/system/GetImageList'
        api.serializer = 'json'
   )

   // 获取项目
   GetProjectListResp GetProjectList(1:GetProjectListReq req)(
       api.post = '/system/GetProjectList'
       api.serializer = 'json'
   )

   // 获取仓库
   GetRepositoryListResp GetRepositoryList(1:GetRepositoryListReq req)(
       api.post = '/system/GetRepositoryList'
       api.serializer = 'json'
   )

   // 删除镜像
   DeleteImageResp DeleteImage(1:DeleteImageReq req)(
       api.post = '/system/DeleteImage'
       api.serializer = 'json'
   )


   // patch statefulset image
   PatchStatefulSetImageResp PatchStatefulSetImage(1:PatchStatefulSetImageReq req)(
       api.post = '/system/PatchStatefulSetImage'
       api.serializer = 'json'
   )

   // GetServiceStatus
   GetServiceStatusResp GetServiceStatus(1:GetServiceStatusReq req)(
       api.post = '/system/GetServiceStatus'
       api.serializer = 'json'
   )



}





struct GetServiceStatusReq {
    1: string environment(go.tag='json:"environment"  binding:"required"')
    2: string repository_name(go.tag='json:"repository_name"  binding:"required"')
}

struct GetServiceStatusResp {
    1: list<harbor.Container> list(go.tag='json:"list"');
}



struct PatchStatefulSetImageReq {
    1: string repository (go.tag='json:"repository" binding:"required"');
    2: string tag(go.tag='json:"tag" binding:"required"');
    3: string description (go.tag='json:"description"');
    4: string environment(go.tag='json:"environment"  binding:"required"')
}


struct PatchStatefulSetImageResp {}

struct DeleteImageReq {
    1: string digest(go.tag='json:"digest" binding:"required"');
    2: string project_name(go.tag='json:"project_name"  binding:"required"')
    3: string repository_name(go.tag='json:"repository_name"  binding:"required"')
}

struct DeleteImageResp {
}


struct GetProjectListReq {
    1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}


enum GetProjectListReqOption{
     q = 1,
}



struct GetProjectListResp {
    1: list<harbor.Project> list(go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}





struct GetRepositoryListReq {
    1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

enum GetRepositoryListReqOption {
    q = 1
    project = 2
}

struct GetRepositoryListResp {
    1: list<harbor.Repository> list(go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}


struct GetImageListReq {
    1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

enum GetImageListReqOption {
    name = 1,
    project = 2,
    repository = 3,
}

struct GetImageListResp {
  1: list<harbor.Artifact> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<string,list<ModelRelease>> release_map(go.tag='json:"release_map"');
}



enum ErrorCode {
  LoginFailed = 10001 ,// 登录失败
  UserNotExist = 10002,  // 账号不存在
  PasswordError = 10003, // 密码错误
  UserExist = 10004, // 账号已存在
  RoleNotExist = 10005, // 角色不存在
  RoleExist = 10006, // 角色已存在
  PermissionNotExist = 10007,// 权限不存在
}

struct GetObjectReq {
	1: string upload_id;
}

struct GetObjectResp {
  1 :string url;
  3: string file_name;
}



struct DeleteObjectReq {
	1: string upload_id;
}

struct DeleteObjectResp {}



struct GetFileListReq {
   1 : base.ListOption list_option (go.tag='json:"list_option" binding:"required"');
}


struct GetFileListResp {
  1: list<common.ModelFile> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct ResetEduUserPasswordReq {
  1: i32 user_id(go.tag='json:"user_id" binding:"required"');
  2: i32 app_id(go.tag='json:"app_id" binding:"required"');
}

struct ResetEduUserPasswordResp {}

struct GetEduUserTokenReq {
  1: i32 user_id(go.tag='json:"user_id" binding:"required"');
  2: i32 app_id(go.tag='json:"app_id" binding:"required"');
}
struct GetEduUserTokenResp {
  1: string token(go.tag='json:"token"');
}

struct SetEduUserRoleReq {
  1: i32 user_id(go.tag='json:"user_id" binding:"required"');
  2: list<i32> role_ids(go.tag='json:"role_ids" binding:"required"');
  3: i32 app_id(go.tag='json:"app_id" binding:"required"');
}

struct SetEduUserRoleResp {}

struct GetEduRoleMenuReq {
  1: i32 role_id(go.tag='json:"role_id" binding:"required"');
  2: i32 app_id(go.tag='json:"app_id" binding:"required"');
}

struct GetEduRoleMenuResp {
  1: list<i32> list(go.tag='json:"list"');
}

struct GetEduRoleListReq {
  1: base.ListOption list_option(go.tag='json:"list_option"');
  2: i32 app_id(go.tag='json:"app_id" binding:"required"');
}
struct GetEduRoleListResp {
  1: list<education.ModelRole> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetOperationLogsListReq {
  1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetOperationLogsListReqOption {
   id = 1;
   created_at = 2;
  user_name = 3;
  operation = 4;
  object_type = 5;
  object_id = 6;
  details = 7;
  ip_address = 8;
  app_id = 9;
}

struct GetOperationLogsListResp {
  1: list<education.ModelOperationLogs> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}


struct SetAppStatusReq {
   1: list<StatusValue> values(go.tag='json:"values" binding:"required"');
}

struct SetAppStatusResp {}

struct SetEduMenuStatusReq {
   1: list<StatusValue> values(go.tag='json:"values" binding:"required"');
}

struct SetEduMenuStatusResp {}

struct StatusValue {
   1: i32 id(go.tag='json:"id"');
   2: bool value(go.tag='json:"value"');
}



struct DeleteAppReq {
   1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}
struct DeleteAppResp {}

struct DeleteEduMenuReq {
   1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteEduMenuResp {

}

struct UpdateEduMenuReq {
   1: i32 id(go.tag='json:"id" binding:"required"');
  2: string name(go.tag='json:"name"');
  3: string path(go.tag='json:"path"');
  4: string component(go.tag='json:"component"');
  5: string redirect(go.tag='json:"redirect"');
  6: i32 parent_id(go.tag='json:"parent_id"');
  7: education.Meta meta(go.tag='json:"meta"');
}

struct UpdateEduMenuResp {

}

struct CreateEduMenuReq {
    1: string name(go.tag='json:"name" binding:"required"');
   2: string path(go.tag='json:"path" binding:"required"');
   3: string component(go.tag='json:"component" binding:"required"');
   4: string redirect(go.tag='json:"redirect"');
   5: i32 parent_id(go.tag='json:"parent_id"');
    6: education.Meta meta(go.tag='json:"meta"');
}

struct CreateEduMenuResp {}





struct GetEduMenuListReq {
   1: base.ListOption list_option;
}

struct GetEduMenuListResp {
   1: list<education.ModelMenu> list;
   2: base.Paginate paginate;
}

struct SetAppRoleMenuReq {
   1: i32 app_id(go.tag='json:"app_id" binding:"required"');
   2: i32 role_id(go.tag='json:"role_id" binding:"required"');
   3: list<i32> menu_ids()
}

struct SetAppRoleMenuResp {}

struct GetPasswordReq {
   1: string user_id(go.tag='json:"user_id" binding:"required"');
   2: i32 app_id(go.tag='json:"app_id" binding:"required"')
}

struct GetPasswordResp {
   1: string password;
}

struct GetEduUserListReq {
   1: base.ListOption list_option;
   2: i32 app_id(go.tag='json:"app_id" binding:"required"');

}

struct GetEduUserListResp {
   1: list<education.ModelUser> list;
   2: base.Paginate paginate;
   3: map<i32, list<education.ModelRole>> role_map(go.tag='json:"role_map"');
}


struct CreateEduUserReq {
   1: string user_name(go.tag='json:"username" binding:"required"'); // 用户名
   2: string password(go.tag='json:"password" binding:"required"');  // 密码
   3: string nick_name(go.tag='json:"nick_name" binding:"required"'); // 昵称
   4: string email(go.tag='json:"email"'); // 邮箱
   5: string mobile(go.tag='json:"mobile"'); // 手机号
   6: string avatar(go.tag='json:"avatar"'); // 头像
   7: i32 app_id(go.tag='json:"app_id" binding:"required"'); // 角色id
}

struct CreateEduUserResp {}

struct GetAppReq{
   1: i32 id(go.tag='json:"id" binging:"required"');
}

struct GetAppResp {
   1: education.ModelApp app;
   2: education.ModelUser user;
   3: list<education.ModelRole> roles;
}


struct CreateAppReq {
  1: string school_name(go.tag='json:"school_name" binding:"required"'); // 学校名称
  2: string  college_name(go.tag='json:"college_name" binding:"required"');  //学院名称
}


struct CreateAppResp {}




struct GetAppListReq {
   1: base.ListOption list_option;
}

enum GetAppListReqOption {
    id = 1,
    school_name = 2,
    created_at = 3,
    college_name = 4,
}


struct GetAppListResp {
   1: base.Paginate paginate;
   2: list<education.ModelApp> list;
}


// 用户登录
struct LoginReq {
  1:required string user_id(go.tag='json:"user_id" binding:"required"');
  2:required string password(go.tag='json:"password" binding:"required"');

}

struct LoginResp {
  1: string token;
  2:optional ModelUser user;
}

struct CreateUserReq {
   1: string user_id(go.tag='json:"user_id" binding:"required"');
   2: string password(go.tag='json:"password" binding:"required"');
   3: string mobile(go.tag='json:"mobile" binding:"required"');
   4: string email(go.tag='json:"email"');
   5: string nickname(go.tag='json:"nickname"');
   6: string avatar(go.tag='json:"avatar"');
   7: i32 role_id(go.tag='json:"role_id"');
}

struct CreateUserResp {
   1: ModelUser user;
}

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

struct GetMenuReq {
  1: i32 uid(go.tag='json:"uid"');
}

struct GetMenuResp {
  1: list<MenuItem> menus;
}

struct GetUserInfoReq {
   1: i32 uid(go.tag='json:"uid"');
}

struct GetUserInfoResp {
   1: string id (go.tag='json:"id"');
   2:string nickname(go.tag='json:"nickname"');
   3:list<string> roles(go.tag='json:"roles"');
}

struct GetUserListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
   2: string uid(go.tag='json:"uid"');
}

enum GetUserListOption {
   created_at = 1,
   updated_at = 2
   user_id = 4,
   mobile = 5,
   email = 6,
   nickname = 7,
   avatar = 8,
   status = 9,
   last_login_at = 10,
   str_user_id = 11,
}

struct GetUserListResp {
   1: list<ModelUser> users;
   2: base.Paginate paginate;
}

struct GetAuthCodeReq {
   1: i32 uid(go.tag='json:"uid"');
}

struct GetAuthCodeResp {
   1: list<string> auth_codes;
}

struct GetMenuListReq {
  1: base.ListOption list_option(go.tag='json:"list_option"');
  2: i32 id(go.tag='json:"id"');
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
   not_parent_id = 9,
}


struct GetMenuListResp {
   1: list<ModelMenu> menus;
   2: base.Paginate paginate;
}

struct GetRoleListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
   2: i32 id(go.tag='json:"id"');
}

struct GetRoleListResp {
   1: list<ModelRole> roles;
   2: base.Paginate paginate;
}
struct CreateMenuReq {
   1: string name(go.tag='json:"name" binding:"required"');
   2: string path(go.tag='json:"path" binding:"required"');
   3: string component(go.tag='json:"component" binding:"required"');
   4: string redirect(go.tag='json:"redirect"');
   5: i32 parent_id(go.tag='json:"parent_id"');
    6: Meta meta(go.tag='json:"meta"');
}
struct CreateMenuResp {}

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


struct GetApiListReq {
  1: base.ListOption list_option(go.tag='json:"list_option"');
  2: i32 id(go.tag='json:"id"');
}

enum GetApiListOption {
   id = 1,
   name = 2,
   path = 3,
   method = 4,
   created_at = 5,
   api_group = 6,
   status = 7,
   description = 8,
}

struct GetApiListResp {
   1: list<ModelApi> apis;
   2: base.Paginate paginate;
}
struct DeleteMenuReq {
  1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}
struct DeleteMenuResp {}