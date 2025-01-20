namespace go common
include "common/base.thrift"
/**
* 公共服务
**/

service commonservice {

    // 获取文件
	GetFileResp GetFile (1:GetFileReq req)(
		api.get = '/common/GetFile'
		api.serializer = 'json'
	)

	// 获取文件列表
	GetFileListResp GetFileList(1:GetFileListReq req)(
		api.post = '/common/GetFileList'
		api.serializer = 'json'
	)
	// 上传小文件
	UploadFileResp UploadFile(1:UploadFileReq req)(
		api.post = '/common/UploadFile'
        api.serializer = 'json'
	)


	// CompleteFile  完成上传，获取文件地址
	CompleteFileResp CompleteFile(1:CompleteFileReq req)(
		api.post = '/common/CompleteFile'
        api.serializer = 'json'
	)

	// 上传大文件 获取Upload Id
	UploadNewMultipartResp UploadNewMultipart(1:UploadNewMultipartReq req)(
		api.post = '/common/UploadNewMultipart'
        api.serializer = 'json'
	)
	// 获取PresignedUrl
	GetPresignedUrlListResp GetPresignedUrlList(1:GetPresignedUrlListReq req)(
		api.post = '/common/GetPresignedUrlList'
		api.serializer = 'json'
	)
    // 完成分片上传
	CompleteMultipartResp CompleteMultipart(1:CompleteMultipartReq req)(
		api.post = '/common/CompleteMultipart'
		api.serializer = 'json'
	)
	// 中断分片上传
	AbortMultipartResp AbortMultipart(1:AbortMultipartReq req)(
		api.post = '/common/AbortMultipart'
		api.serializer = 'json'
	)
    // 获取文件
	GetObjectResp GetObject(1:GetObjectReq req)(
		api.post = '/common/GetObject'
		api.serializer = 'json'
	)
	// 删除文件
	DeleteObjectResp DeleteObject(1:DeleteObjectReq req)(
		api.post = '/common/DeleteObject'
		api.serializer = 'json'
	)

	// 异步任务
	CreateAsyncTaskResp CreateAsyncTask(1:CreateAsyncTaskReq req);
	GetAsyncTaskResultsResp GetAsyncTaskResults(1:GetAsyncTaskResultsReq req)(
		api.post = '/common/GetAyncTaskResults'
		api.serializer = 'json'
	)
	UpdateAsyncTaskResp UpdateAsyncTask(1:UpdateAsyncTaskReq req);





}

const string DefaultBucketName = "open";


struct GetFileListReq {
   1 : base.ListOption list_option (go.tag='json:"list_option" binding:"required"');
}

enum GetFileListReqOption {
	id = 1 ;
	file_name =2;
	file_path = 3
	file_type = 4
	status = 5
	upload_id = 6
	suffix = 7
	str_file_id = 8
	bucket_name =9
}

struct GetFileListResp {
  1: list<ModelFile> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct UploadFileReq {
	1: string str_file_id (go.tag='json:"str_file_id"');
	2: string object_path; // 文件路径
	3: string file_name;  // 文件名
	4: string bucket_name; // 存储桶
	5: i32 file_type;  // 文件类型
}

struct UploadFileResp {
	1: string upload_id;
	2: string upload_url;
}

struct CompleteFileReq{
	2: string upload_id(go.tag='json:"upload_id" binding:"required"');
}

struct CompleteFileResp {
	1: string url;
	2: string file_name;
}

struct UploadNewMultipartReq {
	1: string object_path;
	2: string file_name;
	3: string str_file_id (go.tag='json:"str_file_id" binding:"required"');
	4: string bucket_name;
	5: i32 file_type;
}

struct UploadNewMultipartResp {
	1: string upload_id;
}

struct GetPresignedUrlListReq {
	1: string str_file_id (go.tag='json:"str_file_id" binding:"required"');
	2: string upload_id (go.tag='json:"upload_id" binding:"required"');
	3:list<string> part_numbers;
}

struct  GetPresignedUrlListResp {
	1: list<string> urls;
	2: i32 current_part;
}

struct CompleteMultipartReq {
	1: string upload_id (go.tag='json:"upload_id" binding:"required"');
	2: string str_file_id (go.tag='json:"str_file_id" binding:"required"');
}

struct CompleteMultipartResp {
	1: string url;
	2: string str_file_id;
}

struct AbortMultipartReq {
	1: string str_file_id;
	2: string upload_id;
}

struct AbortMultipartResp {}

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

struct CreateAsyncTaskReq{
    1: string task_key_pre(go.tag='json:"task_key_pre"'); // 任务key前缀
    2: string task_name(go.tag='json:"task_name" binding:"required"'); // 任务名称
    3: string task_key(go.tag='json:"task_key" '); // 任务key
    4: string task_type(go.tag='json:"task_type" binding:"required"'); // 任务类型
    5: binary body(go.tag='json:"body"'); // 任务内容
    6: string service_name(go.tag='json:"service_name"'); // 服务名称
    7: i32 max_retry(go.tag='json:"max_retry"');   // 最大重试次数
    8: bool is_unique(go.tag='json:"is_unique"');  // 是否唯一
    9: i32 delay_time(go.tag='json:"delay_time"'); // 延迟时间
}

enum TaskType {
    Unknown = 0 // 未知
    Export = 1 // 导出
    Import = 2 // 导入
    Sync = 3 // 同步
    SendEmail = 4 // 发送
}

struct CreateAsyncTaskResp{
    1: string task_key(go.tag='json:"task_key"');
}

struct GetAsyncTaskResultsReq{
1: string task_key(go.tag='json:"task_key" binding:"required"');
}

struct GetAsyncTaskResultsResp{
    1:i32 status (go.tag='json:"status"'); // 状态
    2:string message (go.tag='json:"message"'); // 消息
    3:string results(go.tag='json:"results"'); // 结果
    4:string task_key (go.tag='json:"task_key"'); // 任务key
    5: i32 progress (go.tag='json:"progress"'); // 处理进度
}

enum GetAsyncTaskResultsResp_Status {
    Unknown = 0 // 未知
    Success = 1 // 成功
    Failed = 2 // 失败
    Processing = 3 // 处理中
    Canceled = 4 // 取消
}

struct UpdateAsyncTaskReq{
    1: string task_key(go.tag='json:"task_key" binding:"required"');
    2: i32 status(go.tag='json:"status"');
    3: string message(go.tag='json:"message"');
    4: string results(go.tag='json:"results"');
    5: i32 progress(go.tag='json:"progress"');
    6: string queue(go.tag='json:"queue" binding:"required"');
}

struct UpdateAsyncTaskResp{
    1: string task_key(go.tag='json:"task_key"');
}

struct GetFileResp {
    1: ModelFile file;
}

struct GetFileReq {
	1: string upload_id(go.tag='json:"upload_id" binding:"required"');
}




// ---------- Model -----------

struct ModelFile {
  1: i32 id (go.tag='gorm:"column:id;" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at;
  4: string file_name(go.tag='gorm:"column:file_name" json:"file_name"');
  5: string file_path(go.tag='gorm:"column:file_path" json:"file_path"');
  6: i32 file_type(go.tag='gorm:"column:file_type;default:3" json:"file_type"');
  7: i32 status(go.tag='gorm:"column:status" json:"status"');
  8: string upload_id(go.tag='gorm:"column:upload_id;index" json:"upload_id"');
  9: string json_meta (go.tag='gorm:"column:meta;type:json;default:"{}";" json:"meta"');
  10: string suffix (go.tag='gorm:"column:suffix" json:"suffix"');
  11: string str_file_id (go.tag='gorm:"column:str_file_id" json:"str_file_id"');
  12: string bucket_name (go.tag='gorm:"column:bucket_name" json:"bucket_name"');
  13: i32 deleted_at;
  14: ModelFile_Meta meta (go.tag='gorm:"-" json:"-"');
}

struct ModelFile_Meta {}

enum FileType {
    Unknown = 0
	System = 1 // 系统文件
	Tmp = 2 // 临时文件
	Business = 3// 业务文件
}

enum FileStatus {
	Unknown = 0 // 未知
	Init = 1 // 初始化
	Uploading = 2 // 上传中
	Uploaded = 3 // 上传完成
	Failed = 4   // 上传失败
	Deleted = 5  // 删除
	Expired = 6  // 过期
	Aborted = 7 // 中断
}
