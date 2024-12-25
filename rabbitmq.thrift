namespace go rabbitmq


struct ConsumeReq {
   1: i32 created_at
   2: i32 retry_cnt
   3: binary data
   4: string msg_id
}

struct ConsumeResp {
   1: bool retry
   2: double cpu_percent
   3: double memory_percent
}

struct PubReq {
    1 : string msg_id
    2 : i32 group
    3 : string router_key
    4 : string req_id
}

struct PubResp {
   1 : string msg_id
}

service rabbitmq {
}