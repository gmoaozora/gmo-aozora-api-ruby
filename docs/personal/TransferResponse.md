# SwaggerClient::TransferResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | 口座ID 半角数字 口座を識別するID 引き落とし元となる口座情報  | [optional] 
**remitter_name** | **String** | 振込依頼人名 半角文字  | [optional] 
**transfer_designated_date** | **String** | 振込指定日 半角文字 YYYY-MM-DD形式  | [optional] 
**transfer_infos** | [**Array&lt;TransferInfo&gt;**](TransferInfo.md) | 振込情報 振込情報のリスト 該当する情報が無い場合は空のリストを返却  | [optional] 


