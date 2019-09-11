# SwaggerClient::TransferError

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | **String** | エラーコード 半角英数文字  | 
**error_message** | **String** | エラーメッセージ 全半角英数記号文字  | 
**error_details** | [**Array&lt;ErrorDetail&gt;**](ErrorDetail.md) | エラー詳細情報 該当する情報が無い場合は空のリストを返却  | [optional] 
**transfer_error_details** | [**Array&lt;TransferErrorDetail&gt;**](TransferErrorDetail.md) | 振込明細エラー情報 個別明細がエラーの場合のみ応答 該当する情報が無い場合は空のリストを返却  | [optional] 


