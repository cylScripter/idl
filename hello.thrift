namespace go hello

struct SayHelloReq {
  1: string name;
}

struct SayHelloResp {
  1: string message;
}

service helloservice{
  SayHelloResp SayHello(1: SayHelloReq req)(
      api.post = '/hello/SayHello',
      api.serializer = 'json'
  );
}


// kitex -module github.com/cylScripter/openapiserver/systemserver  -template-dir /Users/cyl/project/kitex/server/standard2 -use github.com/cylScripter/openapi   -I ~/project/idl system.thrift
 //kitex -module github.com/cylScripter/openapi -template-dir /Users/cyl/project/kitex/client/standard2 -gen-path ./ -I ~/project/idl system.thrift