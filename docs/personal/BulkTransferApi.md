# SwaggerClient::BulkTransferApi

All URIs are relative to *https://stg-api.gmo-aozora.com/ganb/api/personal/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_transfer_cancel_using_post**](BulkTransferApi.md#bulk_transfer_cancel_using_post) | **POST** /bulktransfer/cancel | 総合振込取消依頼
[**bulk_transfer_fee_using_post**](BulkTransferApi.md#bulk_transfer_fee_using_post) | **POST** /bulktransfer/transferfee | 総合振込手数料事前照会
[**bulk_transfer_request_result_using_get**](BulkTransferApi.md#bulk_transfer_request_result_using_get) | **GET** /bulktransfer/request-result | 総合振込依頼結果照会
[**bulk_transfer_request_using_post**](BulkTransferApi.md#bulk_transfer_request_using_post) | **POST** /bulktransfer/request | 総合振込依頼
[**bulk_transfer_status_using_get**](BulkTransferApi.md#bulk_transfer_status_using_get) | **GET** /bulktransfer/status | 総合振込状況照会


# **bulk_transfer_cancel_using_post**
> TransferCancelResponse bulk_transfer_cancel_using_post(body, x_access_token)

### 総合振込取消依頼

総合振込の取消を行うための依頼をします

※個人事業主のみ対象となり、個人は対象外となります

### 詳細説明

##### 取消対象ステータス
* 申請中以降のステータスで取消が可能です
* 依頼中、作成中の状態は取消対象外です

#### 取消対象キー区分
* 取消対象の取引の内容について指定して下さい
* 取消対象キー区分と、取消対象の振込申請番号の状態がマッチしない場合は、「400 Bad Request」を返却します
* 総合振込の対象は3または4のみとなります
* 1、2は指定不可となります
* ビジネスID管理未利用の場合は、4を指定してください。その他は指定不可となります
* ビジネスID管理利用中かつ、申請者による申請中ステータスの「取下」を行いたい場合は、3を指定してください
* ビジネスID管理利用中かつ、承認可能者による予約中ステータスの「承認取消」を行いたい場合は、4を指定してください

#### 重複した依頼
* 同一の受付番号（振込申請番号）への重複した依頼はできません
* なお、前回の総合振込取消依頼が期限切れとなれば依頼は可能となります

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BulkTransferApi.new

body = SwaggerClient::TransferCancelRequest.new({accountId: 'accountId_example', cancelTargetKeyClass: '4', applyNo: 'applyNo_example'}) # TransferCancelRequest | HTTPリクエストボディ

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128 


begin
  #総合振込取消依頼
  result = api_instance.bulk_transfer_cancel_using_post(body, x_access_token)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BulkTransferApi->bulk_transfer_cancel_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TransferCancelRequest**](TransferCancelRequest.md)| HTTPリクエストボディ | 
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128  | 

### Return type

[**TransferCancelResponse**](TransferCancelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **bulk_transfer_fee_using_post**
> TransferFeeResponse bulk_transfer_fee_using_post(body, x_access_token)

### 総合振込手数料事前照会

総合振込・総合振込予約を行うための依頼内容の事前チェックと手数料を照会します

※個人事業主のみ対象となり、個人は対象外となります

### 詳細説明
* 合計振込手数料および個別振込手数料は、振込実行時までに手数料の改定や消費税の変更等が行われた場合は、当APIで返却した手数料とは異なる手数料が適用されることがあります
* ポイントについては、算出から振込実行までの間に変動する可能性があるため、手数料算出時の計算対象から除外して返却されます

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BulkTransferApi.new

bulk_transfer = SwaggerClient::BulkTransfer.new({itemId: 'itemId_example', beneficiaryBankCode: 'beneficiaryBankCode_example', beneficiaryBranchCode: 'beneficiaryBranchCode_example', accountTypeCode: 'accountTypeCode_example', accountNumber: 'accountNumber_example', beneficiaryName: 'beneficiaryName_example', transferAmount: 'transferAmount_example'})
body = SwaggerClient::BulkTransferRequest.new({accountId: 'accountId_example', transferDesignatedDate: 'transferDesignatedDate_example', totalCount: '1', totalAmount: 'totalAmount_example', bulkTransfers: [bulk_transfer]}) # TransferRequest | HTTPリクエストボディ

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128 


begin
  #総合振込手数料事前照会
  result = api_instance.bulk_transfer_fee_using_post(body, x_access_token)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BulkTransferApi->bulk_transfer_fee_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkTransferRequest**](BulkTransferRequest.md)| HTTPリクエストボディ | 
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128  | 

### Return type

[**TransferFeeResponse**](TransferFeeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **bulk_transfer_request_result_using_get**
> TransferRequestResultResponse bulk_transfer_request_result_using_get(account_id, apply_no, x_access_token)

### 総合振込依頼結果照会

総合振込依頼、総合振込取消依頼の処理状態を照会します

※個人事業主のみ対象となり、個人は対象外となります
* 総合振込取消依頼をした場合は、最後の依頼の結果コードが照会対象となります

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BulkTransferApi.new

account_id = 'account_id_example' # String | 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29 

apply_no = 'apply_no_example' # String | 受付番号（振込申請番号） 半角数字 すべての振込・総合振込で採番される、照会の基本単位となる番号  minLength: 16 maxLength: 16 

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128 


begin
  #総合振込依頼結果照会
  result = api_instance.bulk_transfer_request_result_using_get(account_id, apply_no, x_access_token)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BulkTransferApi->bulk_transfer_request_result_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29  | 
 **apply_no** | **String**| 受付番号（振込申請番号） 半角数字 すべての振込・総合振込で採番される、照会の基本単位となる番号  minLength: 16 maxLength: 16  | 
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128  | 

### Return type

[**TransferRequestResultResponse**](TransferRequestResultResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **bulk_transfer_request_using_post**
> BulkTransferRequestResponse bulk_transfer_request_using_post(body, x_access_token)

### 総合振込依頼

総合振込・総合振込予約を行うための依頼をします

※個人事業主のみ対象となり、個人は対象外となります

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BulkTransferApi.new

bulk_transfer = SwaggerClient::BulkTransfer.new({itemId: 'itemId_example', beneficiaryBankCode: 'beneficiaryBankCode_example', beneficiaryBranchCode: 'beneficiaryBranchCode_example', accountTypeCode: 'accountTypeCode_example', accountNumber: 'accountNumber_example', beneficiaryName: 'beneficiaryName_example', transferAmount: 'transferAmount_example'})
body = SwaggerClient::BulkTransferRequest.new({accountId: 'accountId_example', transferDesignatedDate: 'transferDesignatedDate_example', totalCount: '1', totalAmount: 'totalAmount_example', bulkTransfers: [bulk_transfer]}) # TransferRequest | HTTPリクエストボディ

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128 


begin
  #総合振込依頼
  result = api_instance.bulk_transfer_request_using_post(body, x_access_token)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BulkTransferApi->bulk_transfer_request_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkTransferRequest**](BulkTransferRequest.md)| HTTPリクエストボディ | 
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128  | 

### Return type

[**BulkTransferRequestResponse**](BulkTransferRequestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **bulk_transfer_status_using_get**
> BulkTransferStatusResponse bulk_transfer_status_using_get(account_id, query_key_class, x_access_token, opts)

### 総合振込状況照会

仕向の総合振込状況および履歴を照会します

※個人事業主のみ対象となり、個人は対象外となります

### 詳細説明

#### 取得上限件数
* 総合振込照会明細情報: 500件（明細情報取得フラグが「False:取得しない」の場合）
* 総合振込明細情報: 500件（明細情報取得フラグが「True：取得する」の場合）
* 1回のリクエストで照会できる明細は、総合振込照会明細情報または総合振込明細情報のいずれか最大500件です
* 取得できる明細が存在しない場合は「200：OK」とし明細を返却しません
* 取得できる明細数が500に満たないときは取得できる明細のみを返却します

#### ページング
* 2ページ目以降を照会する際は、初回と同じリクエスト内容に、初回レスポンスの次明細キーまたは総合振込明細情報取得対象キーを追加してリクエストしてください

#### ソート順
##### 明細情報取得フラグが「False：取得しない」のとき

振込照会対象期間区分の指定により下記となります

  * 1：振込申請受付日　第1ソート：振込申請日昇順　第２ソート：振込申請番号昇順
  * 2：振込指定日　　　第1ソート：振込指定日昇順　第２ソート：振込申請番号昇順

※振込照会対象期間区分の指定がない場合は、1：振込申請受付日と同じとします

##### 明細情報取得フラグが、「True：取得する」のとき
* 明細番号の昇順

#### 対象期間

日本語名     | &#9312; | &#9313; | &#9314; | &#9315;
:----|:----:|:----:|:----:|:----:
対象期間From | × | ○ | × | ○
対象期間To   | × | × | ○ | ○
* &#9312;の場合: 当日分の明細を返却
* &#9313;の場合: 対象期間From ～ 当日までの明細を返却
* &#9314;の場合: 取引初回 ～ 対象期間Toまでの明細を返却
* &#9315;の場合: 対象期間From ～ 対象期間Toまでの明細を返却

※現在契約中の総合振込サービスのみ照会可能となります

#### 照会対象ステータス
* 申請中以降のステータスで照会が可能となります
* 依頼中、作成中の状態は照会対象外です

#### 照会対象となる明細
* 総合振込・およびその予約の履歴と状況が照会対象となります（APIからの依頼結果のみではありません）

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BulkTransferApi.new

account_id = 'account_id_example' # String | 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29 

query_key_class = 'query_key_class_example' # String | 照会対象キー区分 半角数字 照会対象のキー 1：振込申請照会対象指定、2：振込一括照会対象指定  minLength: 1 maxLength: 1 

x_access_token = 'x_access_token_example' # String | アクセストークン  minLength: 1 maxLength: 128 

opts = { 
  detail_info_necessity: true, # BOOLEAN | 明細情報取得フラグ 総合振込明細情報の取得要否 照会対象キー区分が、1のときは「True：取得する」を指定可 それ以外で「True：取得する」が設定されている場合は、「400 Bad Request」を返却 True：取得する、False:取得しない　省略/NULLは　false扱い 
  bulktransfer_item_key: 'bulktransfer_item_key_example', # String | 総合振込明細情報取得対象キー 半角数字 明細情報取得フラグが、「True：取得する」のとき指定可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 総合振込明細情報を取得するときに取得を開始する番号 明細情報取得フラグが、「True：取得する」のときの省略/NULLは1扱い 1500明細を取得する場合、は以下のように設定 1電文目：1 2電文目：501 3電文目：1001  minLength: 1 maxLength: 6 
  apply_no: 'apply_no_example', # String | 受付番号（振込申請番号） 半角数字 照会対象の番号を設定 照会対象キー区分が、1のときは必須 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）  minLength: 16 maxLength: 16 
  date_from: 'date_from_example', # String | 対象期間From 半角文字 YYYY-MM-DD形式 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）              minLength: 10 maxLength: 10 
  date_to: 'date_to_example', # String | 対象期間To 半角文字 YYYY-MM-DD形式 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10 
  next_item_key: 'next_item_key_example', # String | 次明細キー 半角数字 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）              minLength: 1 maxLength: 24 
  request_transfer_status: ['request_transfer_status_example'], # Array<String> | 照会対象ステータス  半角数字  2:申請中、3:差戻、4:取下げ、5:期限切れ、8:承認取消/予約取消、  11:予約中、12:手続中、13:リトライ中、  20:手続済、30:不能・組戻あり、40:手続不成立   照会対象キー区分が、2のときは設定可  それ以外は設定しません（値が設定されている場合は、「400 Bad Request」を返却）  配列のため、複数設定した場合は対象のステータスをOR条件で検索します  省略した場合は全てを設定したものとみなします  minLength: 1 maxLength: 3 
  request_transfer_class: 'request_transfer_class_example', # String | 振込照会対象取得区分 半角数字 1：ALL、2：振込申請のみ、3：振込受付情報のみ NULLを設定 値が設定されている場合は、「400 Bad Request」を返却  minLength: 1 maxLength: 1 
  request_transfer_term: 'request_transfer_term_example' # String | 振込照会対象期間区分 半角数字 対象期間Fromと対象期間Toで指定する日付の区分 1：振込申請受付日　2：振込指定日 照会対象キー区分が2のときのみ入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 照会対象キー区分が、2のときに指定しない場合は1と扱います  minLength: 1 maxLength: 1 
}

begin
  #総合振込状況照会
  result = api_instance.bulk_transfer_status_using_get(account_id, query_key_class, x_access_token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BulkTransferApi->bulk_transfer_status_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29  | 
 **query_key_class** | **String**| 照会対象キー区分 半角数字 照会対象のキー 1：振込申請照会対象指定、2：振込一括照会対象指定  minLength: 1 maxLength: 1  | 
 **x_access_token** | **String**| アクセストークン  minLength: 1 maxLength: 128  | 
 **detail_info_necessity** | **BOOLEAN**| 明細情報取得フラグ 総合振込明細情報の取得要否 照会対象キー区分が、1のときは「True：取得する」を指定可 それ以外で「True：取得する」が設定されている場合は、「400 Bad Request」を返却 True：取得する、False:取得しない　省略/NULLは　false扱い  | [optional] 
 **bulktransfer_item_key** | **String**| 総合振込明細情報取得対象キー 半角数字 明細情報取得フラグが、「True：取得する」のとき指定可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 総合振込明細情報を取得するときに取得を開始する番号 明細情報取得フラグが、「True：取得する」のときの省略/NULLは1扱い 1500明細を取得する場合、は以下のように設定 1電文目：1 2電文目：501 3電文目：1001  minLength: 1 maxLength: 6  | [optional] 
 **apply_no** | **String**| 受付番号（振込申請番号） 半角数字 照会対象の番号を設定 照会対象キー区分が、1のときは必須 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）  minLength: 16 maxLength: 16  | [optional] 
 **date_from** | **String**| 対象期間From 半角文字 YYYY-MM-DD形式 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）              minLength: 10 maxLength: 10  | [optional] 
 **date_to** | **String**| 対象期間To 半角文字 YYYY-MM-DD形式 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10  | [optional] 
 **next_item_key** | **String**| 次明細キー 半角数字 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）              minLength: 1 maxLength: 24  | [optional] 
 **request_transfer_status** | [**Array&lt;String&gt;**](String.md)| 照会対象ステータス  半角数字  2:申請中、3:差戻、4:取下げ、5:期限切れ、8:承認取消/予約取消、  11:予約中、12:手続中、13:リトライ中、  20:手続済、30:不能・組戻あり、40:手続不成立   照会対象キー区分が、2のときは設定可  それ以外は設定しません（値が設定されている場合は、「400 Bad Request」を返却）  配列のため、複数設定した場合は対象のステータスをOR条件で検索します  省略した場合は全てを設定したものとみなします  minLength: 1 maxLength: 3  | [optional] 
 **request_transfer_class** | **String**| 振込照会対象取得区分 半角数字 1：ALL、2：振込申請のみ、3：振込受付情報のみ NULLを設定(値が設定されている場合は、「400 Bad Request」を返却) 照会対象キー区分が、2のときに指定しない場合は1と扱います minLength: 1 maxLength: 1  | [optional] 
 **request_transfer_term** | **String**| 振込照会対象期間区分 半角数字 対象期間Fromと対象期間Toで指定する日付の区分 1：振込申請受付日　2：振込指定日 照会対象キー区分が2のときのみ入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 照会対象キー区分が、2のときに指定しない場合は1と扱います  minLength: 1 maxLength: 1  | [optional] 

### Return type

[**BulkTransferStatusResponse**](BulkTransferStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8
