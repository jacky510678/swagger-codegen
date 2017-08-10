--[[ 
  Swagger Petstore
 
  This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
 
  OpenAPI spec version: 1.0.0
  Contact: apiteam@swagger.io
  Generated by: https://github.com/swagger-api/swagger-codegen.git
--]]

-- api_response class
local api_response = {}
local api_response_mt = {
  __name = "api_response";
  __index = api_response;
}

local function cast_api_response(t)
  return setmetatable(t, api_response_mt)
end

local function new_api_response(code, type, message)
  return cast_api_response({
    ["code"] = code;
    ["type"] = type;
    ["message"] = message;
  })
end

return {
  cast = cast_api_response;
  new = new_api_response;
}
