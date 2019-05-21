# SwaggerClient::SpAccountBalance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | 口座ID 半角英数字 つかいわけ口座を識別するID  | 
**od_balance** | **String** | 円普通預金残高 半角数字　マイナス含む 該当しない場合は項目自体を設定しません  | [optional] 
**td_total_balance** | **String** | 円定期預金（総額） 半角数字　マイナス含む つかいわけ口座に紐付いた、円定期預金の総残高 該当しない場合は項目自体を設定しません  | [optional] 
**fod_total_balance_yen_equivalent** | **String** | 外貨普通預金（総評価額） 半角数字　マイナス含む つかいわけ口座に紐付いた、外貨普通預金の総残高を円に換算した額 該当しない場合は項目自体を設定しません  | [optional] 
**sp_account_fcy_balances** | [**Array&lt;SpAccountFcyBalance&gt;**](SpAccountFcyBalance.md) | つかわけ口座外貨残高情報リスト 該当する情報が無い場合は、空のリストを返却します  | [optional] 


