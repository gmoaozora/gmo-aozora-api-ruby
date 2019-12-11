# SwaggerClient::TokenApi

All URIs are relative to *https://stg-api.gmo-aozora.com/ganb/api/auth/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**token_using_post**](TokenApi.md#token_using_post) | **POST** /token | アクセストークン発行


# **token_using_post**
> TokenResponse token_using_post(body, opts)

### アクセストークン発行

認可エンドポイントで取得した認可コードを用いたアクセストークンの取得及びリフレッシュトークンを用いたアクセストークンの更 新を行うためのエンドポイント

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TokenApi.new

body = SwaggerClient::TokenRequest.new({grant_type: "authorization_code", code: "code_example", redirect_uri: "redirect_uri_example", client_id: "client_id_example", client_secret: "client_secret_example"}) # TokenRequest | HTTPリクエストボディ

opts = { 
  "authorization" => "authorization_example" # String | クライアント認証用のBasic認証値。 (クライアントIDとクライアントシーレットを:(コロン)で連結し、Base64エンコードしたものを設定。) 事前に登録する「クライアント認証方式」にclient_secret_basic(ベーシック認証)を設定した場合、必須。 「クライアント認証方式」にclient_secret_post(パラメーター認証)を設定した場合、設定不要。
}

begin
  #アクセストークン発行
  result = api_instance.token_using_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TokenApi->token_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TokenRequest**](TokenRequest.md)| HTTPリクエストボディ | 
 **authorization** | **String**| クライアント認証用のBasic認証値。 (クライアントIDとクライアントシーレットを:(コロン)で連結し、Base64エンコードしたものを設定。) 事前に登録する「クライアント認証方式」にclient_secret_basic(ベーシック認証)を設定した場合、必須。 「クライアント認証方式」にclient_secret_post(パラメーター認証)を設定した場合、設定不要。 | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8
