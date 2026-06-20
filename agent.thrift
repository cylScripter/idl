namespace go agent
include "common/base.thrift"

// 会话状态: 1 正常 2 归档 3 删除
// 消息角色: user / assistant / system / tool
// 消息状态: 1 生成中 2 成功 3 失败 4 已撤回 5 停止中

// 会话表
struct ModelSession {
  1: i32 id(go.tag='gorm:"column:id;primaryKey" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index;not null" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at;not null" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at;index;not null" json:"deleted_at"');
  5: string session_id(go.tag='gorm:"column:session_id;uniqueIndex;size:64;not null" json:"session_id"');
  6: i32 app_id(go.tag='gorm:"column:app_id;index:idx_agent_session_user_app_status;not null" json:"app_id"');
  7: i32 user_id(go.tag='gorm:"column:user_id;index:idx_agent_session_user_app_status;not null" json:"user_id"');
  8: string title(go.tag='gorm:"column:title;size:128;not null" json:"title"');
  9: string scene(go.tag='gorm:"column:scene;size:64;index;not null" json:"scene"');
  10: string model(go.tag='gorm:"column:model;size:64;not null" json:"model"');
  11: i32 status(go.tag='gorm:"column:status;index:idx_agent_session_user_app_status;default:1;not null" json:"status"');
  12: i32 message_count(go.tag='gorm:"column:message_count;default:0;not null" json:"message_count"');
  13: string last_message_id(go.tag='gorm:"column:last_message_id;size:64" json:"last_message_id"');
  14: string last_message_preview(go.tag='gorm:"column:last_message_preview;size:255" json:"last_message_preview"');
  15: string metadata(go.tag='gorm:"column:metadata;type:text" json:"metadata"');
  16: i32 running_status(go.tag='gorm:"column:running_status;index;default:0;not null" json:"running_status"');
  17: string running_message_id(go.tag='gorm:"column:running_message_id;size:64;not null" json:"running_message_id"');
}

// 消息表
struct ModelMessage {
  1: i32 id(go.tag='gorm:"column:id;primaryKey" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index;not null" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at;not null" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at;index;not null" json:"deleted_at"');
  5: string message_id(go.tag='gorm:"column:message_id;uniqueIndex;size:64;not null" json:"message_id"');
  6: string session_id(go.tag='gorm:"column:session_id;index:idx_agent_message_session_created;size:64;not null" json:"session_id"');
  7: i32 app_id(go.tag='gorm:"column:app_id;index;not null" json:"app_id"');
  8: i32 user_id(go.tag='gorm:"column:user_id;index;not null" json:"user_id"');
  9: string role(go.tag='gorm:"column:role;size:32;not null" json:"role"');
  10: string content(go.tag='gorm:"column:content;type:text;not null" json:"content"');
  11: string content_type(go.tag='gorm:"column:content_type;size:32;default:markdown;not null" json:"content_type"');
  12: i32 status(go.tag='gorm:"column:status;index;default:2;not null" json:"status"');
  13: i32 tokens(go.tag='gorm:"column:tokens;default:0;not null" json:"tokens"');
  14: string parent_message_id(go.tag='gorm:"column:parent_message_id;size:64" json:"parent_message_id"');
  15: string metadata(go.tag='gorm:"column:metadata;type:text" json:"metadata"');
}

// 会话摘要表
struct ModelSessionSummary {
  1: i32 id(go.tag='gorm:"column:id;primaryKey" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index;not null" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at;not null" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at;index;not null" json:"deleted_at"');
  5: string session_id(go.tag='gorm:"column:session_id;uniqueIndex;size:64;not null" json:"session_id"');
  6: i32 app_id(go.tag='gorm:"column:app_id;index;not null" json:"app_id"');
  7: i32 user_id(go.tag='gorm:"column:user_id;index;not null" json:"user_id"');
  8: string summary(go.tag='gorm:"column:summary;type:text;not null" json:"summary"');
  9: string from_message_id(go.tag='gorm:"column:from_message_id;size:64" json:"from_message_id"');
  10: string to_message_id(go.tag='gorm:"column:to_message_id;size:64" json:"to_message_id"');
  11: i32 message_count(go.tag='gorm:"column:message_count;default:0;not null" json:"message_count"');
}

// 工具调用记录表
struct ModelToolCall {
  1: i32 id(go.tag='gorm:"column:id;primaryKey" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index;not null" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at;not null" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at;index;not null" json:"deleted_at"');
  5: string call_id(go.tag='gorm:"column:call_id;uniqueIndex;size:64;not null" json:"call_id"');
  6: string session_id(go.tag='gorm:"column:session_id;index;size:64;not null" json:"session_id"');
  7: string message_id(go.tag='gorm:"column:message_id;index;size:64;not null" json:"message_id"');
  8: i32 app_id(go.tag='gorm:"column:app_id;index;not null" json:"app_id"');
  9: i32 user_id(go.tag='gorm:"column:user_id;index;not null" json:"user_id"');
  10: string tool_name(go.tag='gorm:"column:tool_name;size:128;index;not null" json:"tool_name"');
  11: string arguments(go.tag='gorm:"column:arguments;type:text" json:"arguments"');
  12: string result(go.tag='gorm:"column:result;type:text" json:"result"');
  13: i32 status(go.tag='gorm:"column:status;index;default:1;not null" json:"status"');
  14: string error(go.tag='gorm:"column:error;type:text" json:"error"');
  15: i32 started_at(go.tag='gorm:"column:started_at;not null" json:"started_at"');
  16: i32 finished_at(go.tag='gorm:"column:finished_at;not null" json:"finished_at"');
}

struct ChatReq {
  1: string session_id(go.tag='json:"session_id"');
  2: string message(go.tag='json:"message"');
  3: i32 user_id(go.tag='json:"user_id"');
  4: i32 app_id(go.tag='json:"app_id"');
  5: string scene(go.tag='json:"scene"');
  6: string model(go.tag='json:"model"');
  7: map<string, string> metadata(go.tag='json:"metadata"');
}

struct ChatResp {
  1: string answer(go.tag='json:"answer"');
  2: string session_id(go.tag='json:"session_id"');
  3: string message_id(go.tag='json:"message_id"');
  4: string event(go.tag='json:"event"'); // start / delta / done / error
  5: string error(go.tag='json:"error"');
  6: i32 seq(go.tag='json:"seq"');
  7: string event_id(go.tag='json:"event_id"');
}

struct HealthReq {}

struct HealthResp {
  1: bool ok(go.tag='json:"ok"');
  2: string message(go.tag='json:"message"');
}

struct AgentSession {
  1: string session_id(go.tag='json:"session_id"');
  2: i32 user_id(go.tag='json:"user_id"');
  3: i32 app_id(go.tag='json:"app_id"');
  4: string title(go.tag='json:"title"');
  5: string scene(go.tag='json:"scene"');
  6: string model(go.tag='json:"model"');
  7: i32 status(go.tag='json:"status"');
  8: i32 message_count(go.tag='json:"message_count"');
  9: string last_message_id(go.tag='json:"last_message_id"');
  10: string last_message_preview(go.tag='json:"last_message_preview"');
  11: i32 created_at(go.tag='json:"created_at"');
  12: i32 updated_at(go.tag='json:"updated_at"');
  13: i32 deleted_at(go.tag='json:"deleted_at"');
  14: i32 running_status(go.tag='json:"running_status"');
  15: string running_message_id(go.tag='json:"running_message_id"');
}

struct AgentMessage {
  1: string message_id(go.tag='json:"message_id"');
  2: string session_id(go.tag='json:"session_id"');
  3: i32 user_id(go.tag='json:"user_id"');
  4: i32 app_id(go.tag='json:"app_id"');
  5: string role(go.tag='json:"role"');
  6: string content(go.tag='json:"content"');
  7: string content_type(go.tag='json:"content_type"'); // markdown / text / json
  8: i32 status(go.tag='json:"status"');
  9: i32 tokens(go.tag='json:"tokens"');
  10: string parent_message_id(go.tag='json:"parent_message_id"');
  11: map<string, string> metadata(go.tag='json:"metadata"');
  12: i32 created_at(go.tag='json:"created_at"');
  13: i32 updated_at(go.tag='json:"updated_at"');
  14: i32 deleted_at(go.tag='json:"deleted_at"');
}

struct CreateSessionReq {
  1: i32 user_id(go.tag='json:"user_id"');
  2: i32 app_id(go.tag='json:"app_id"');
  3: string title(go.tag='json:"title"');
  4: string scene(go.tag='json:"scene"');
  5: string model(go.tag='json:"model"');
  6: map<string, string> metadata(go.tag='json:"metadata"');
}

struct CreateSessionResp {
  1: AgentSession session(go.tag='json:"session"');
}

struct GetSessionReq {
  1: string session_id(go.tag='json:"session_id"');
  2: i32 user_id(go.tag='json:"user_id"');
  3: i32 app_id(go.tag='json:"app_id"');
}

struct GetSessionResp {
  1: AgentSession session(go.tag='json:"session"');
}

struct ListSessionReq {
  1: i32 user_id(go.tag='json:"user_id"');
  2: i32 app_id(go.tag='json:"app_id"');
  3: i32 status(go.tag='json:"status"');
  4: string scene(go.tag='json:"scene"');
  5: i32 limit(go.tag='json:"limit"');
  6: i32 offset(go.tag='json:"offset"');
}

struct ListSessionResp {
  1: list<AgentSession> sessions(go.tag='json:"sessions"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct UpdateSessionReq {
  1: string session_id(go.tag='json:"session_id"');
  2: i32 user_id(go.tag='json:"user_id"');
  3: i32 app_id(go.tag='json:"app_id"');
  4: string title(go.tag='json:"title"');
  5: i32 status(go.tag='json:"status"');
}

struct UpdateSessionResp {
  1: AgentSession session(go.tag='json:"session"');
}

struct DeleteSessionReq {
  1: string session_id(go.tag='json:"session_id"');
  2: i32 user_id(go.tag='json:"user_id"');
  3: i32 app_id(go.tag='json:"app_id"');
}

struct DeleteSessionResp {}

struct ListSessionMessagesReq {
  1: string session_id(go.tag='json:"session_id"');
  2: i32 user_id(go.tag='json:"user_id"');
  3: i32 app_id(go.tag='json:"app_id"');
  4: string before_message_id(go.tag='json:"before_message_id"');
  5: i32 limit(go.tag='json:"limit"');
}

struct ListSessionMessagesResp {
  1: list<AgentMessage> messages(go.tag='json:"messages"');
  2: bool has_more(go.tag='json:"has_more"');
  3: string next_before_message_id(go.tag='json:"next_before_message_id"');
}

struct StopChatReq {
  1: string session_id(go.tag='json:"session_id"');
  2: i32 user_id(go.tag='json:"user_id"');
  3: i32 app_id(go.tag='json:"app_id"');
}

struct StopChatResp {
  1: bool stopped(go.tag='json:"stopped"');
  2: string session_id(go.tag='json:"session_id"');
  3: string message_id(go.tag='json:"message_id"');
}

service AgentService {
  ChatResp Chat(1: ChatReq req)(
      api.post = '/agent/Chat',
      api.serializer = 'json',
      streaming.mode = 'server'
  );

  HealthResp Health(1: HealthReq req)(
      api.get = '/agent/Health',
      api.serializer = 'json'
  );

  CreateSessionResp CreateSession(1: CreateSessionReq req)(
      api.post = '/agent/CreateSession',
      api.serializer = 'json'
  );

  GetSessionResp GetSession(1: GetSessionReq req)(
      api.post = '/agent/GetSession',
      api.serializer = 'json'
  );

  ListSessionResp ListSession(1: ListSessionReq req)(
      api.post = '/agent/ListSession',
      api.serializer = 'json'
  );

  UpdateSessionResp UpdateSession(1: UpdateSessionReq req)(
      api.post = '/agent/UpdateSession',
      api.serializer = 'json'
  );

  DeleteSessionResp DeleteSession(1: DeleteSessionReq req)(
      api.post = '/agent/DeleteSession',
      api.serializer = 'json'
  );

  ListSessionMessagesResp ListSessionMessages(1: ListSessionMessagesReq req)(
      api.post = '/agent/ListSessionMessages',
      api.serializer = 'json'
  );

  StopChatResp StopChat(1: StopChatReq req)(
      api.post = '/agent/StopChat',
      api.serializer = 'json'
  );
}
