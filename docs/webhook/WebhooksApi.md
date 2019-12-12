# SwaggerClient::WebhooksApi

All URIs are relative to *https://stg-api.gmo-aozora.com/ganb/api/webhooks/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounts_using**](WebhooksApi.md#accounts_using) | **POST** /subscribe | 通知配信制御
[**accounts_using_get**](WebhooksApi.md#accounts_using_get) | **GET** /unsentlist/va-deposit-transaction | 振込入金口座未送信明細取得


# **accounts_using**
> accounts_using(authorization, body)

### 通知配信制御

指定したイベント通知に対応するイベント通知（WebHook）の配信開始、配信停止をコントロールします

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WebhooksApi.new

authorization = 'authorization_example' # String | 認証情報 銀行システムが配信先システムに発行した、クライアントIDとクライアントシーレットを\":\"（コロン）で連結し、Base64エンコードした値を設定 minLength: ‐ maxLength: ‐ 

event_type = SwaggerClient::EventType.new({eventType: 'va-deposit-transaction'})

body = SwaggerClient::SubscribeRequestBody.new({subscribeStatus: '1', eventTypes: [event_type]}) # SubscribeRequestBody | HTTPリクエストボディ


begin
  #通知配信制御
  api_instance.accounts_using(authorization, body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->accounts_using: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| 認証情報 銀行システムが配信先システムに発行した、クライアントIDとクライアントシーレットを:(コロン)で連結し、Base64エンコードした値を設定 minLength: ‐ maxLength: ‐  | 
 **body** | [**SubscribeRequestBody**](SubscribeRequestBody.md)| HTTPリクエストボディ | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **accounts_using_get**
> VaDepositTransactionUnsentResponse accounts_using_get(authorization)

### 振込入金口座未送信明細取得

配信停止状態となっている場合、本APIを利用することで未送信または送信エラーとなっている、振込入金口座の入金明細を一括で取得することができます
* 通常、未送信または送信エラーとなっている明細は配信再開後に通知されますが、本APIで取得された明細は配信済みとなるため、配信再開後には通知されません
* 未送信または送信エラーとなっている明細が無い場合は404 Not Foundを返却します

※法人口座および個人事業主口座のみ対象となり、個人口座は対象外となります

### 詳細説明

#### 取得上限件数
* 500件
* 取得できる明細数が500に満たないときは取得できる明細のみを返却します
* 取得できた明細数が500件の場合、まだ取得できる明細が残っている可能性がありますので、「404：Not Found」が返却されるまで、リクエストを繰り返してください。

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WebhooksApi.new

authorization = 'authorization_example' # String | 認証情報 銀行システムが配信先システムに発行した、クライアントIDとクライアントシーレットを\":\"（コロン）で連結し、Base64エンコードした値を設定 minLength: ‐ maxLength: ‐ 


begin
  #振込入金口座未送信明細取得
  result = api_instance.accounts_using_get(authorization)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhooksApi->accounts_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| 認証情報 銀行システムが配信先システムに発行した、クライアントIDとクライアントシーレットを:(コロン)で連結し、Base64エンコードした値を設定 minLength: ‐ maxLength: ‐  | 

### Return type

[**VaDepositTransactionUnsentResponse**](VaDepositTransactionUnsentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8
