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

	// 检查分片上传状态
	CheckMultipartStatusResp CheckMultipartStatus(1:CheckMultipartStatusReq req)(
		api.post = '/common/CheckMultipartStatus'
		api.serializer = 'json'
	)

	// 重新上传指定分片
	ResendPartUrlResp ResendPartUrl(1:ResendPartUrlReq req)(
		api.post = '/common/ResendPartUrl'
		api.serializer = 'json'
	)

	// 获取上传进度
	GetUploadProgressResp GetUploadProgress(1:GetUploadProgressReq req)(
		api.post = '/common/GetUploadProgress'
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

// 分片上传相关常量配置
const i32 DefaultChunkSize = 5242880; // 5MB
const i32 MinChunkSize = 1048576; // 1MB
const i64 MaxChunkSize = 5368709120; // 5GB
const i32 MaxAllowedParts = 10000; // 最大分片数量
const i32 DefaultMaxRetries = 3; // 默认重试次数
const i32 DefaultTimeoutSeconds = 3600; // 默认超时时间（1小时）
const i32 MaxTimeoutSeconds = 86400; // 最大超时时间（24小时）

// 错误码枚举
enum UploadErrorCode {
    Success = 0 // 成功
    InvalidRequest = 1000 // 请求参数无效
    FileNotFound = 1001 // 文件不存在
    UploadIdNotFound = 1002 // 上传ID不存在
    PartNumberInvalid = 1003 // 分片编号无效
    PartSizeInvalid = 1004 // 分片大小无效
    PartETagMismatch = 1005 // 分片ETag不匹配
    UploadExpired = 1006 // 上传已过期
    QuotaExceeded = 1007 // 配额超限
    NetworkError = 1008 // 网络错误
    StorageError = 1009 // 存储服务错误
    InternalError = 1010 // 内部错误
    PartAlreadyExists = 1011 // 分片已存在
    TooManyParts = 1012 // 分片数量过多
    EntityTooSmall = 1013 // 文件太小
    EntityTooLarge = 1014 // 文件太大
    InvalidPartOrder = 1015 // 分片顺序错误
    UploadAborted = 1016 // 上传已中断
}


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
	6: i64 file_size (go.tag='json:"file_size"'); // 文件总大小（字节）
	7: i32 chunk_size (go.tag='json:"chunk_size"'); // 分片大小（字节），默认5MB
	8: i32 max_retries (go.tag='json:"max_retries"'); // 最大重试次数，默认3次
	9: i32 timeout_seconds (go.tag='json:"timeout_seconds"'); // 超时时间（秒），默认3600秒
}

struct UploadNewMultipartResp {
	1: string upload_id;
	2: i32 recommended_chunk_size (go.tag='json:"recommended_chunk_size"'); // 推荐的分片大小
	3: i32 max_allowed_parts (go.tag='json:"max_allowed_parts"'); // 最大允许分片数
	4: i64 min_chunk_size (go.tag='json:"min_chunk_size"'); // 最小分片大小
	5: i64 max_chunk_size (go.tag='json:"max_chunk_size"'); // 最大分片大小
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

// 检查分片上传状态请求
struct CheckMultipartStatusReq {
	1: string upload_id (go.tag='json:"upload_id" binding:"required"');
	2: string str_file_id (go.tag='json:"str_file_id" binding:"required"');
}

// 检查分片上传状态响应
struct CheckMultipartStatusResp {
	1: i32 status (go.tag='json:"status"');
	2: list<PartInfo> uploaded_parts (go.tag='json:"uploaded_parts"');
	3: i32 total_parts (go.tag='json:"total_parts"');
	4: i64 total_size (go.tag='json:"total_size"');
	5: string message (go.tag='json:"message"');
	6: UploadErrorCode error_code (go.tag='json:"error_code"');
	7: list<i32> missing_parts (go.tag='json:"missing_parts"');
	8: i64 expires_at (go.tag='json:"expires_at"');
}

// 分片信息
struct PartInfo {
	1: i32 part_number (go.tag='json:"part_number"');
	2: i64 size (go.tag='json:"size"');
	3: string etag (go.tag='json:"etag"');
	4: i64 uploaded_at (go.tag='json:"uploaded_at"');
}

// 重新上传分片URL请求
struct ResendPartUrlReq {
	1: string upload_id (go.tag='json:"upload_id" binding:"required"');
	2: string str_file_id (go.tag='json:"str_file_id" binding:"required"');
	3: list<i32> part_numbers (go.tag='json:"part_numbers"');
}

// 重新上传分片URL响应
struct ResendPartUrlResp {
	1: map<string, string> part_urls (go.tag='json:"part_urls"');
}

// 获取上传进度请求
struct GetUploadProgressReq {
	1: string upload_id (go.tag='json:"upload_id" binding:"required"');
	2: string str_file_id (go.tag='json:"str_file_id" binding:"required"');
}

// 获取上传进度响应
struct GetUploadProgressResp {
	1: i32 total_parts (go.tag='json:"total_parts"');
	2: i32 completed_parts (go.tag='json:"completed_parts"');
	3: i64 total_size (go.tag='json:"total_size"');
	4: i64 uploaded_size (go.tag='json:"uploaded_size"');
	5: double progress_percentage (go.tag='json:"progress_percentage"');
	6: i32 upload_speed (go.tag='json:"upload_speed"'); // KB/s
	7: i64 estimated_time_remaining (go.tag='json:"estimated_time_remaining"'); // seconds
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

// 分片上传策略建议
/**
 * 分片大小建议：
 * - 小文件（< 100MB）：5MB 分片，减少网络请求数量
 * - 中等文件（100MB - 1GB）：10MB 分片，平衡性能和效率
 * - 大文件（> 1GB）：20MB 分片，提高上传效率
 *
 * 网络环境建议：
 * - 高速网络：可使用较大分片（20-50MB）
 * - 普通网络：建议使用中等分片（5-10MB）
 * - 不稳定网络：建议使用小分片（1-5MB），增加重试机制
 *
 * 并发建议：
 * - 一般建议并发数：3-5 个分片同时上传
 * - 高速网络可适当提高并发数：5-10 个
 * - 不稳定网络建议降低并发数：1-3 个
 */
