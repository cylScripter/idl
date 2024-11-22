namespace go system

include "common/base.thrift"



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
  5: string user_id;
  6: string role_id;
}


// 权限表
struct ModelPermission{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string name;
  6: string description;
  7: string permission_id;
  8: bool status;
}


// 角色权限关联表
struct ModelRolePermission{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string role_id;
  6: string permission_id;
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


// 用户登录
struct LoginReq {
  1:required string user_id(go.tag='json:"user_id,required" format:"email,required"');
  2:required string password(go.tag='json:"password,required" format:"password,required"');

}

struct LoginResp {
  1: string token;
  2:optional ModelUser user;
}

struct CreateUserReq {
   1: string password(go.tag='json:"password" format:"password,required"');
   2: string mobile(go.tag='json:"mobile" format:"mobile,required"');
   3: string email(go.tag='json:"email" format:"email"');
   4: string nickname(go.tag='json:"nickname"');
   5: string avatar(go.tag='json:"avatar"');
   6: i32 role_id(go.tag='json:"role_id"');
}

struct CreateUserResp {
   1: ModelUser user;
}

struct CreateRoleReq {
   1: string name(go.tag='json:"name"');
   2: string description(go.tag='json:"description"');
}
struct CreateRoleResp {
   1: ModelRole role;
}


struct CreatePermissionReq {
   1: string name(go.tag='json:"name"');
   2: string description(go.tag='json:"description"');
}

struct CreatePermissionResp {
   1: ModelPermission permission;
}


struct SetUserRoleReq {
   1: string user_id(go.tag='json:"user_id"');
   2: string role_id(go.tag='json:"role_id"')
}

struct SetUserRoleResp {
   1: ModelUserRole user_role;
}

struct SetRolePermissionReq {
   1: string role_id(go.tag='json:"role_id"');
   2: string permission_id(go.tag='json:"permission_id"')
}

struct SetRolePermissionResp {
   1: ModelRolePermission role_permission;
}