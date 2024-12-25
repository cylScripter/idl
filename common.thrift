namespace go common

/**
* 公共服务
**/

service commonservice {
	// 上传小文件
	UploadFileResp UploadFile(1:UploadFileReq req)(
		api.post = '/common/UploadFile'
        api.serializer = 'json'
	)
	// 上传大文件
	UploadNewMultipartResp UploadNewMultipart(1:UploadNewMultipartReq req)(
		api.post = '/common/NewMultipartResp'
        api.serializer = 'json'
	)
	GetPresignedUrlListResp GetPresignedUrlList(1:GetPresignedUrlListReq req)(
		api.post = '/common/PresignedUrlList'
		api.serializer = 'json'
	)

	CompleteMultipartResp CompleteMultipart(1:CompleteMultipartReq req)(
		api.post = '/common/CompleteMultipart'
		api.serializer = 'json'
	)
	AbortMultipartResp AbortMultipart(1:AbortMultipartReq req)(
		api.post = '/common/AbortMultipart'
		api.serializer = 'json'
	)
    // 获取文件
	GetObjectResp GetObject(1:GetObjectReq req)(
		api.post = '/common/GetObject'
		api.serializer = 'json'
	)
	DeleteObjectResp DeleteObject(1:DeleteObjectReq req)(
		api.post = '/common/DeleteObject'
		api.serializer = 'json'
	)

}

const string DefaultBucketName = "open";

// ---------- Model -----------

struct ModelFile {
  1: i32 id (go.tag='gorm:"column:id;" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_a;indext" json:"created_at"');
  3: i32 updated_at;
  4: string file_name(go.tag='gorm:"column:file_name" json:"file_name"');
  5: string file_path(go.tag='gorm:"column:file_path" json:"file_path"');
  6: i32 file_type(go.tag='gorm:"column:file_type" json:"file_type"');
  7: i32 status(go.tag='gorm:"column:status" json:"status"');
  8: string upload_id(go.tag='gorm:"column:upload_id" json:"upload_id"');
  9: string json_meta (go.tag='gorm:"column:meta;type:json" json:"json_meta"');
  10: string suffix (go.tag='gorm:"column:suffix" json:"suffix"');
  11: string str_file_id (go.tag='gorm:"column:str_file_id" json:"str_file_id"');
  12: string bucket_name (go.tag='gorm:"column:bucket_name" json:"bucket_name"');
  13: i32 deleted_at;

  14: ModelFile_Meta meta (go.tag='gorm:"-" json:"meta"');
}



struct ModelFile_Meta {

}



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

struct UploadFileReq {
	1: binary buffer(go.tag='json:"buffer" binding:"required"');
	2: string object_path;
	3: string file_name;
	4: string bucket_name;
	5: i32 file_type;
}

struct UploadFileResp {
	1: string str_file_id;
	2: string url;
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
	1: string str_file_id;
	2: string bucket_name;
	3: string object_path;
}

struct GetObjectResp {
  1 :string url;
  3: string file_name;
}

struct DeleteObjectReq {
	1: string str_file_id;
	2: string bucket_name;
	3: string object_path;
}

struct DeleteObjectResp {}