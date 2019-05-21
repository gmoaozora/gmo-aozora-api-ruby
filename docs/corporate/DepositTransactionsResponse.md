# SwaggerClient::DepositTransactionsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | 口座ID 半角英数字 口座を識別するID  | 
**date_from** | **String** | 対象期間From 半角文字 YYYY-MM-DD形式 リクエストに対象期間From、Toが設定されていない場合当日日付が設定されます  | 
**date_to** | **String** | 対象期間To 半角文字 YYYY-MM-DD形式 リクエストに対象期間From、Toが設定されていない場合当日日付が設定されます  | 
**base_date** | **String** | 基準日 半角文字 YYYY-MM-DD形式 振込入金明細を照会した基準日を示します  | 
**base_time** | **String** | 基準時刻 HH:MM:SS+09:00形式 振込入金明細を照会した基準時刻を示します  | 
**has_next** | **BOOLEAN** | 次明細フラグ ・true&#x3D;次明細あり ・false&#x3D;次明細なし  | 
**next_item_key** | **String** | 次明細キー 半角数字 次明細フラグがfalseの場合は項目自体を設定しません  | [optional] 
**count** | **String** | 明細取得件数 半角数字  | 
**payment_arrivals** | [**Array&lt;PaymentArrival&gt;**](PaymentArrival.md) | 振込入金明細情報 該当する情報が無い場合は、空のリストを返却します  | [optional] 


