namespace go base

struct Option {
  1: i32 name;
  2: string value;
}
struct ListOption {
  1: list<Option> options(go.tag='json:"options"');
  3: i32 limit(go.tag='json:"limit"');
  4: i32 offset(go.tag='json:"offset"');
  5: string offset_token(go.tag='json:"offset_token"');
}
struct Paginate{
  1: i32 total(go.tag='json:"total"'); // 总数
  2: i32 limit(go.tag='json:"limit"');
  3: i32 offset(go.tag='json:"offset"');
  4: string next_offset_token(go.tag='json:"next_offset_token"');
  5: bool has_more(go.tag='json:"has_more"');
}

service BaseService {}



struct StatusValue {
   1: i32 id(go.tag='json:"id"');
   2: bool value(go.tag='json:"value"');
}