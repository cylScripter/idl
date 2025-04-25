namespace go harbor
include "common/base.thrift"


service harborservice {
    TestResp Test (1:TestReq req);
    // GetProjectList
    GetProjectListResp GetProjectList(1:GetProjectListReq req);
    // repository
    GetRepositoryListResp GetRepositoryList(1:GetRepositoryListReq req);
    // artifact
    GetArtifactListResp GetArtifactList(1:GetArtifactListReq req);
    // DeleteArtifact
    DeleteArtifactResp DeleteArtifact(1:DeleteArtifactReq req);

    // GetModelHarborConfigList
    GetHarborConfigListResp GetHarborConfigList(1:GetHarborConfigListReq req);

    // DeleteHarborConfig
    DeleteHarborConfigResp DeleteHarborConfig(1:DeleteHarborConfigReq req);

    // CreateHarborConfig
    CreateHarborConfigResp CreateHarborConfig(1:CreateHarborConfigReq req);

    // UpdateHarborConfig
    UpdateHarborConfigResp UpdateHarborConfig(1:UpdateHarborConfigReq req);

    // // patch statefulset image
    PatchStatefulSetImageResp PatchStatefulSetImage(1:PatchStatefulSetImageReq req);

    // GetStatefulSetContainer
    GetStatefulSetContainerResp GetStatefulSetContainer(1:GetStatefulSetContainerReq req);

}

struct GetStatefulSetContainerReq {
  1: string namespacs(go.tag='json:"namespacs" binding:"required"');
  2: string label_selector (go.tag='json:"label_selector" binding:"required"');
}

struct GetStatefulSetContainerResp {
  1: list<Container> containers (go.tag='json:"containers"');
}




struct Container {
  1: string name(go.tag='json:"name"');
  2: string pod_name(go.tag='json:"pod_name"');
  3: string image_name(go.tag='json:"image_name"');
  4: bool ready (go.tag='json:"ready"');
  5: string status(go.tag='json:"status"');
  6: string State(go.tag='json:"state"');
}



struct PatchStatefulSetImageReq {
  1: string repository (go.tag='json:"repository"');
  2: string tag (go.tag='json:"tag" binding:"required" ');
  3: string namespacs(go.tag='json:"namespacs" binding:"required"');
  4: string stateful_set_name (go.tag='json:"stateful_set_name" binding:"required"');
}

struct PatchStatefulSetImageResp{}



struct UpdateHarborConfigReq {
  1: i32 id (go.tag='json:"id" binding:"required"');
  2: string name(go.tag='json:"name" binding:"required"');
  3: string url(go.tag='json:"url" binding:"required"');
  4: string username(go.tag='json:"username" binding:"required"');
  5: string password(go.tag='json:"password" binding:"required"');

}

struct UpdateHarborConfigResp{

}



struct CreateHarborConfigReq {
  1: string name(go.tag='json:"name" binding:"required"');
  2: string url(go.tag='json:"url" binding:"required"');
  3: string username(go.tag='json:"username" binding:"required"');
  4: string password(go.tag='json:"password" binding:"required"');
}

struct CreateHarborConfigResp {
}


struct DeleteHarborConfigReq {
   1: list<i32> ids(go.tag='json:"ids" binding:"required"')
}


struct DeleteHarborConfigResp {}


struct GetHarborConfigListReq{
 1: base.ListOption list_option(go.tag='json:"list_option"');
 2: base.Paginate paginate(go.tag='json:"paginate"');
}

enum GetHarborConfigListReqOption {
  id =1
  created_at =2
  updated_at =3
  deleted_at =4
  name =5
  url =6
}

struct GetHarborConfigListResp {
  1: list<ModelHarborConfig> list (go.tag='json:"list"');
  2: base.Paginate paginate (go.tag='json:"paginate"');
}

struct DeleteArtifactReq {
1: string request_id (go.tag='json:"request_id"');
2: string project_name(go.tag='json:"project_name"  binding:"required"')
3: string repository_name(go.tag='json:"repository_name"  binding:"required"')
4: string reference(go.tag='json:"reference"  binding:"required"')
}

struct DeleteArtifactResp{

}

struct GetArtifactListReq {
    1: string request_id (go.tag='json:"request_id"');
    2: string q(go.tag='json:"q"')
    3 : i32 page(go.tag='json:"page"')
    4: i32 page_size(go.tag='json:"page_size"')
    5: string sort(go.tag='json:"sort"')
    6: string project_name(go.tag='json:"project_name"')
    7: string repository_name(go.tag='json:"repository_name"')
}

struct GetArtifactListResp {
  1: list<Artifact> artifacts (go.tag='json:"artifacts"');
}


struct Artifact {
   1: string digest (go.tag='json:"digest"');
   2: string extra_attrs(go.tag='json:"extra_attrs"')
   3: i32 id (go.tag='json:"id"');
   4: i32 project_id (go.tag='json:"project_id"');
   5: string pull_time(go.tag='json:"pull_time"')
   6: string push_time(go.tag='json:"push_time"')
   7: i32 repository_id(go.tag='json:"repository_id"')
   8: string repository_name(go.tag='json:"repository_name"');
   9: string name(go.tag='json:"name"');
   10: string type(go.tag='json:"type"');
}


struct GetRepositoryListReq {
    1: string request_id (go.tag='json:"request_id"');
    2: string q(go.tag='json:"q"')
    3 : i32 page(go.tag='json:"page"')
    4: i32 page_size(go.tag='json:"page_size"')
    5: string sort(go.tag='json:"sort"')
    6: string project_name(go.tag='json:"project_name"')
}



struct GetRepositoryListResp {
  1: list<Repository> repositories (go.tag='json:"repositories"');
}

struct Repository {
    1: i32 artifact_count (go.tag='json:"artifact_count"');
    2: string creation_time (go.tag='json:"creation_time"');
    3: i32 id (go.tag='json:"id"');
    4: string name (go.tag='json:"name"');
    5: i32 project_id (go.tag='json:"project_id"');
    6: i32 pull_count (go.tag='json:"pull_count"');
    7: string update_time (go.tag='json:"update_time"');
}

struct TestReq {
  1: string str_test (go.tag='json:"str_test" binding:"required"');
}

struct TestResp {
  1: string str_test (go.tag='json:"str_test"');
}

struct GetProjectListReq {
  1: string request_id (go.tag='json:"request_id"');
  2: string q(go.tag='json:"q"')
  3: i32 page(go.tag='json:"page"')
  4: i32 page_size(go.tag='json:"page_size"')
  5: string sort(go.tag='json:"sort"')
  6: string name(go.tag='json:"name"')
  7: bool public(go.tag='json:"public"')
  8: string owner(go.tag='json:"owner"')
  9: bool with_detail(go.tag='json:"with_detail"')
}


struct GetProjectListResp {
  1: list<Project> projects (go.tag='json:"projects"');
}

struct Project {
  1: i32 id (go.tag='json:"id"');
  2: string creation_time (go.tag='json:"creation_time"');
  3: string update_time (go.tag='json:"update_time"');
  4: i32 repo_count (go.tag='json:"repo_count"');
  5: string name (go.tag='json:"name"');
  6: string metadata(go.tag='json:"metadata"')
}



// Model struct

struct ModelHarborConfig {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at;index" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='gorm:"column:name;index" json:"name"');
  6: string url(go.tag='gorm:"column:url" json:"url"');
  7: string username(go.tag='gorm:"column:username" json:"username"');
  8: string password(go.tag='gorm:"column:password" json:"password"');
}
