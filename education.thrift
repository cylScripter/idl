namespace go education

struct ModelApp {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string school_name; // 学校名称
  6: string  college_name;  //学院名称
  8: string app_key;
  9: string app_secret;
  10: i32 school_code;
}

struct ModelEduUser {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at;
  5: string user_name;
  6: string password;
  7: string nick_name;
  8: string mobile;
  9: string email;
  10: string avatar;
  11: i32 app_id;
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
  9: i32 app_id;
}

// 菜单表
struct ModelMenu {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string component(go.tag='json:"component" gorm:"column:component;default:BasicLayout"');
  6: Meta mete(go.tag='json:"mate" gorm:"column:meta;embedded"');
  7: string name (go.tag='json:"name"');
  8: string path (go.tag='json:"path"');
  9: string redirect (go.tag='json:"redirect"');
  10: i32 parent_id (go.tag='json:"parent_id"');
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
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string name;
  6: string description;
  7: string str_permission_id;
  8: bool status;
}


// 教研室表
struct ModelTeacherOffice{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string name;
  6: string description;
  7: i32 app_id;
}