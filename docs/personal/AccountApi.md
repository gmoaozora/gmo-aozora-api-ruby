# SwaggerClient::AccountApi

All URIs are relative to *https://stg-api.gmo-aozora.com/ganb/api/personal/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounts_deposit_transactions_using_get**](AccountApi.md#accounts_deposit_transactions_using_get) | **GET** /accounts/deposit-transactions | 振込入金明細照会
[**accounts_using_get**](AccountApi.md#accounts_using_get) | **GET** /accounts | 口座一覧照会
[**balances_using_get**](AccountApi.md#balances_using_get) | **GET** /accounts/balances | 残高照会
[**transactions_using_get**](AccountApi.md#transactions_using_get) | **GET** /accounts/transactions | 入出金明細照会


# **accounts_deposit_transactions_using_get**
> DepositTransactionsResponse accounts_deposit_transactions_using_get(account_id, x_access_token, opts)

### 振込入金明細照会

指定した円普通預金口座の振込入金明細情報を照会します

※個人事業主のみ対象となり、個人は対象外となります

### 詳細説明

#### 対象科目
* 円普通預金口座
* つかいわけ口座や、証券コネクト等は対象外となります（指定時はエラー）

#### 取得上限件数
* 500件
* 取得できる明細数が500に満たないときは取得できる明細のみを返却します
* 取得できる明細が存在しない場合は「200：OK」とし明細を返却しません

#### ページング
* 2ページ目以降を照会する際は、初回と同じリクエスト内容に、初回レスポンスの次明細キーを追加してリクエストしてください

#### ソート順
* 取引の昇順

#### 対象期間

日本語名     | &#9312; | &#9313; | &#9314; | &#9315;
:----|:----:|:----:|:----:|:----:
対象期間From | × | ○ | × | ○
対象期間To   | × | × | ○ | ○
* &#9312;の場合: 当日分の振込入金明細を返却
* &#9313;の場合: 対象期間From ～ 当日までの振込入金明細を返却
* &#9314;の場合: 取引初回 ～ 対象期間Toまでの振込入金明細を返却
* &#9315;の場合: 対象期間From ～ 対象期間Toまでの振込入金明細を返却

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountApi.new

account_id = 'account_id_example' # String | 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29 

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128 

opts = { 
  date_from: 'date_from_example', # String | 対象期間From 半角文字 YYYY-MM-DD形式  minLength: 10 maxLength: 10 
  date_to: 'date_to_example', # String | 対象期間To 半角文字 YYYY-MM-DD形式  対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10 
  next_item_key: 'next_item_key_example' # String | 次明細キー 半角数字 初回要求時は未設定 初回応答で次明細フラグが「true」の場合、返却された同項目を2回目以降に設定  minLength: 1 maxLength: 24 
}

begin
  #振込入金明細照会
  result = api_instance.accounts_deposit_transactions_using_get(account_id, x_access_token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->accounts_deposit_transactions_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29  | 
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128  | 
 **date_from** | **String**| 対象期間From 半角文字 YYYY-MM-DD形式  minLength: 10 maxLength: 10  | [optional] 
 **date_to** | **String**| 対象期間To 半角文字 YYYY-MM-DD形式  対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10  | [optional] 
 **next_item_key** | **String**| 次明細キー 半角数字 初回要求時は未設定 初回応答で次明細フラグが「true」の場合、返却された同項目を2回目以降に設定  minLength: 1 maxLength: 24  | [optional] 

### Return type

[**DepositTransactionsResponse**](DepositTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **accounts_using_get**
> AccountsResponse accounts_using_get(x_access_token)

### 口座一覧照会

保有する全ての口座情報一覧を照会します

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountApi.new

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128 


begin
  #口座一覧照会
  result = api_instance.accounts_using_get(x_access_token)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->accounts_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128  | 

### Return type

[**AccountsResponse**](AccountsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **balances_using_get**
> BalancesResponse balances_using_get(x_access_token, opts)

### 残高照会

保有する口座の残高情報を照会します
* 口座IDを指定した場合、該当する口座の残高情報を照会します
* 口座IDを指定しない場合、保有する口座全ての残高情報を照会します 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountApi.new

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128 

opts = { 
  account_id: 'account_id_example' # String | 口座ID 口座を識別するIDまたは、つかいわけ口座を識別するID  minLength: 12 maxLength: 29 
}

begin
  #残高照会
  result = api_instance.balances_using_get(x_access_token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->balances_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128  | 
 **account_id** | **String**| 口座ID 口座を識別するIDまたは、つかいわけ口座を識別するID  minLength: 12 maxLength: 29  | [optional] 

### Return type

[**BalancesResponse**](BalancesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **transactions_using_get**
> TransactionsResponse transactions_using_get(account_id, x_access_token, opts)

### 入出金明細照会

指定した円普通預金口座の入出金明細情報を照会します

なお、つかいわけ口座も円普通預金口座の入出金明細を照会可能としつかいわけ口座の口座IDが指定された場合で、紐付く入出金明細が存在しない場合は空のリストを返却します

### 詳細説明

#### 対象科目

* 円普通預金口座

#### 取得上限件数
* 500件
* 取得できる明細数が500に満たないときは取得できる明細のみを返却します
* 取得できる明細が存在しない場合は「200：OK」とし明細を返却しません

#### ページング
* 2ページ目以降を照会する際は、初回と同じリクエスト内容に、初回レスポンスの次明細キーを追加してリクエストしてください

#### ソート順
* 取引の昇順

#### 対象期間

日本語名     | &#9312; | &#9313; | &#9314; | &#9315;
:----|:----:|:----:|:----:|:----:
対象期間From | × | ○ | × | ○
対象期間To   | × | × | ○ | ○
* &#9312;の場合: 当日分の明細を入出金明細を返却
* &#9313;の場合: 対象期間From ～ 当日までの入出金明細を返却
* &#9314;の場合: 取引初回 ～ 対象期間Toまでの入出金明細を返却
* &#9315;の場合: 対象期間From ～ 対象期間Toまでの入出金明細を返却

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountApi.new

account_id = 'account_id_example' # String | 口座ID 半角英数字 口座を識別するIDまたは、つかいわけ口座を識別するID  科目コードが以下の場合のみ受け付けます ・01=普通預金（有利息） ・02=普通預金（決済用）  minLength: 12 maxLength: 29 

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128            

opts = { 
  date_from: 'date_from_example', # String | 対象期間From 半角文字 YYYY-MM-DD形式  minLength: 10 maxLength: 10 
  date_to: 'date_to_example', # String | 対象期間To 半角文字 YYYY-MM-DD形式 対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10 
  next_item_key: 'next_item_key_example' # String | 次明細キー 半角数字 初回要求時は未設定 初回応答で次明細キーが「true」の場合、返却された同項目を2回目以降に設定  minLength: 1 maxLength: 24 
}

begin
  #入出金明細照会
  result = api_instance.transactions_using_get(account_id, x_access_token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->transactions_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| 口座ID 半角英数字 口座を識別するIDまたは、つかいわけ口座を識別するID  科目コードが以下の場合のみ受け付けます ・01&#x3D;普通預金（有利息） ・02&#x3D;普通預金（決済用）  minLength: 12 maxLength: 29  | 
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128             | 
 **date_from** | **String**| 対象期間From 半角文字 YYYY-MM-DD形式  minLength: 10 maxLength: 10  | [optional] 
 **date_to** | **String**| 対象期間To 半角文字 YYYY-MM-DD形式 対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10  | [optional] 
 **next_item_key** | **String**| 次明細キー 半角数字 初回要求時は未設定 初回応答で次明細キーが「true」の場合、返却された同項目を2回目以降に設定  minLength: 1 maxLength: 24  | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8

# **visa_transactions_using_get**
> VisaTransactionsResponse visa_transactions_using_get(account_id, x_access_token, opts)

### Visaデビット取引明細照会
指定した円普通預金口座のVisaデビット取引明細情報を照会します
### 詳細説明
#### 対象科目
* 円普通預金口座かつ、Visaデビットカードを現時点で保有している口座
#### 取得上限件数
* 500件
* 取得できる明細数が500に満たないときは取得できる明細のみを返却します
* 取得できる明細が存在しない場合は「200：OK」とし明細を返却しません
* ただし、1回の検索で総件数が99,999件を超える照会はできません。それ以上の場合は「400 Bad Request」を返却します
#### ページング
* 2ページ目以降を照会する際は、初回と同じリクエスト内容に、初回レスポンスの次明細キーを追加してリクエストしてください
#### ソート順
* 取引の降順
#### 対象期間
日本語名     | &#9312; | &#9313; | &#9314; | &#9315;
:----|:----:|:----:|:----:|:----:
対象期間From | × | ○ | × | ○
対象期間To   | × | × | ○ | ○
* &#9312;の場合: 当日分のVisaデビット取引明細を返却
* &#9313;の場合: 対象期間From ～ 当日までのVisaデビット取引明細を返却
* &#9314;の場合: 取引初回 ～ 対象期間ToまでのVisaデビット取引明細を返却
* &#9315;の場合: 対象期間From ～ 対象期間ToまでのVisaデビット取引明細を返却
### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountApi.new

account_id = 'account_id_example' # String | 口座ID 半角英数字 口座を識別するID  科目コードが以下の場合のみ受け付けます ・01=普通預金（有利息） ・02=普通預金（決済用）  minLength: 12 maxLength: 29 

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128            

opts = { 
  date_from: 'date_from_example', # String | 対象期間From 半角文字 YYYY-MM-DD形式  minLength: 10 maxLength: 10 
  date_to: 'date_to_example', # String | 対象期間To 半角文字 YYYY-MM-DD形式 対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10 
  next_item_key: 'next_item_key_example' # String | 次明細キー 半角数字 初回要求時は未設定 初回応答で次明細キーが「true」の場合、返却された同項目を2回目以降に設定  minLength: 1 maxLength: 24 
}

begin
  #Visaデビット入出金明細照会
  result = api_instance.visa_transactions_using_get(account_id, x_access_token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->visa_transactions_using_get: #{e}"
end
```
### Required Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **string**| 口座ID 半角英数字 口座を識別するID 科目コードが以下の場合のみ受け付けます ・01&#x3D;普通預金（有利息） ・02&#x3D;普通預金（決済用）  minLength: 12 maxLength: 29  | |
 **x_access_token** | **string**| アクセストークン  minLength: 1 maxLength: 128             | |
 **opts** | ***VisaTransactionsUsingGETOpts** | optional parameters | nil if no parameters
### Optional Parameters
Optional parameters are passed through a pointer to a VisaTransactionsUsingGETOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date_from** | **optional.String**| 対象期間From 半角文字 YYYY-MM-DD形式  minLength: 10 maxLength: 10  | |
 **date_to** | **optional.String**| 対象期間To 半角文字 YYYY-MM-DD形式 対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10  |  |
 **next_item_key** | **optional.String**| 次明細キー 半角数字 初回要求時は未設定 初回応答で次明細キーが「true」の場合、返却された同項目を2回目以降に設定  minLength: 1 maxLength: 24  | |
### Return type
[**VisaTransactionsResponse**](VisaTransactionsResponse.md)
### Authorization
No authorization required
### HTTP request headers
 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8
