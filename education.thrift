namespace go education

include "common/base.thrift"

struct ModelApp {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string school_name(go.tag='gorm:"column:school_name" json:"school_name"'); // 学校名称
  6: string  college_name(go.tag='gorm:"column:college_name" json:"college_name"');  //学院名称
  8: string app_key(go.tag='gorm:"column:app_key" json:"app_key"');
  9: string app_secret(go.tag='gorm:"column:app_secret" json:"app_secret"');
  10: i32 school_code(go.tag='gorm:"column:school_code" json:"school_code"');
}

struct ModelUser {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string user_name(go.tag='gorm:"column:user_name" json:"user_name"');
  6: string password(go.tag='gorm:"column:password" json:"password"');
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


// 教研室表
struct ModelTeacherOffice{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='json:"name"');
  6: string description(go.tag='json:"description"');
  7: i32 app_id(go.tag='json:"app_id"');
  8: string name2(go.tag='json:"name2"');
}


service educationservice {
  // 创建主体
  CreateAppResp CreateApp(1:CreateAppReq req)(
     api.post = '/education/CreateApp'
     api.serializer = 'json'
  );
  LoginResp Login(1:LoginReq req)(
     api.post = '/education/Login'
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
  // 获取权限列表
  GetPermissionListResp GetPermissionList(1:GetPermissionListReq req)(
     api.post = '/education/GetPermissionList'
     api.serializer = 'json'
  )
  // 获取菜单
  GetMenuResp GetMenuList(1:GetMenuReq req)(
     api.post = '/education/GetMenu'
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
}

struct LoginReq {
  1: string user_name(go.tag='json:"username" binding:"required"');
  2: string password(go.tag='json:"password" binding:"required"');
}

struct LoginResp {
  1: string token(go.tag='json:"token"');
  2: ModelUser user(go.tag='json:"user"');
  3: ModelRole role(go.tag='json:"role"');
}


struct GetUserListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
    2: i32 id(go.tag='json:"id"');
}

struct GetUserListResp {
  1: list<ModelUser> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<string, ModelRole> role_map(go.tag='json:"role_map"');
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