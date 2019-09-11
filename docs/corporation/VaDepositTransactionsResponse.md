# SwaggerClient::VaDepositTransactionsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ra_id** | **String** | 入金口座ID 半角数字 入金先の口座を識別するID  | 
**ra_branch_code** | **String** | 入金口座　支店コード 半角数字  | 
**ra_branch_name_kana** | **String** | 入金口座　支店名カナ 半角文字  | 
**ra_account_number** | **String** | 入金口座　口座番号 半角数字  | 
**ra_holder_name** | **String** | 入金口座　口座名義（漢字） 全角文字  | 
**date_from** | **String** | 対象期間From 半角文字 YYYY-MM-DD形式 リクエストに対象期間From、Toが設定されていない場合は当日日付が設定されます  | 
**date_to** | **String** | 対象期間To 半角文字 YYYY-MM-DD形式 リクエストに対象期間From、Toが設定されていない場合は当日日付が設定されます  | 
**base_date** | **String** | 基準日 半角文字 入金明細を照会した基準日を示します YYYY-MM-DD形式  | 
**base_time** | **String** | 基準時刻 半角文字 入金明細を照会した基準時刻を示します HH:MM:SS+09:00形式  | 
**has_next** | **BOOLEAN** | 次明細フラグ ・true&#x3D;次明細あり ・false&#x3D;次明細なし  | 
**next_item_key** | **String** | 次明細キー 半角数字 次明細フラグがfalseの場合は、項目自体を設定しません  | [optional] 
**count** | **String** | 明細取得件数 半角数字  | 
**va_transactions** | [**Array&lt;VaTransaction&gt;**](VaTransaction.md) | 振込入金口座入金明細情報リスト 該当する情報が無い場合は、空のリストを返却します  | [optional] 


