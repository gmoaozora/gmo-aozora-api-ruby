# SwaggerClient::VisaTransactionsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | 口座ID 半角英数字 口座を識別するID  | [default to null]
**date_from** | **String** | 対象期間From 半角文字 YYYY-MM-DD形式 リクエストに対象期間From、Toが設定されていない場合は当日日付が設定されます  | [default to null]
**date_to** | **String** | 対象期間To 半角文字 YYYY-MM-DD形式 リクエストに対象期間From、Toが設定されていない場合は当日日付が設定されます  | [default to null]
**base_date** | **String** | 基準日 Visaデビット取引明細を照会した基準日を示します YYYY-MM-DD形式  | [default to null]
**base_time** | **String** | 基準時刻 Visaデビット取引明細を照会した基準時刻を示します HH:MM:SS+09:00形式  | [default to null]
**has_next** | **BOOLEAN** | 次明細フラグ ・true&#x3D;次明細あり ・false&#x3D;次明細なし  | [default to null]
**next_item_key** | **String** | 次明細キー 半角数字 次明細フラグがfalseの場合は、項目自体を設定しません  | [optional]
**count** | **String** | 明細取得件数 半角数字  | [default to null]
**visa_transactions** | [**Array&lt;visa_transaction&gt;**](VisaTransaction.md) | Visaデビット取引明細情報リスト 該当する情報が無い場合は、空のリストを返却します  | [optional]

