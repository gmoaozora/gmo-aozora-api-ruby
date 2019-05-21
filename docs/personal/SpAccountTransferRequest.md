# SwaggerClient::SpAccountTransferRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deposit_sp_account_id** | **String** | つかいわけ口座_入金口座ID 半角数字 口座を識別するID　入金先となる口座情報  | 
**debit_sp_account_id** | **String** | つかいわけ口座_出金口座ID 半角数字 口座を識別するID　引き落とし元となる口座情報  | 
**currency_code** | **String** | 通貨コード 半角文字 ISO4217準拠した通貨コード 省略時はJPYとみなします  | [optional] 
**payment_amount** | **String** | 支払金額 数値のみでカンマ、マイナス不可 円(JPY)の場合１以上であること 外貨の場合当該通貨の補助通貨単位以上であること  | 


