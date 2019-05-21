# SwaggerClient::VaStatusChangeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**va_contract_auth_key** | **String** | 振込入金口座API認証情報 半角英数字 NULLを設定 値が設定されている場合は「400 Bad Request」を返却  | [optional] 
**va_status_change_code** | **String** | 振込入金口座状態変更依頼コード 半角数字 以下の変更したコード値を設定 ・1&#x3D;停止 ・2&#x3D;再開 ・3&#x3D;削除  | 
**va_id_list** | [**Array&lt;VaId&gt;**](VaId.md) | 振込入金口座IDリスト 上限は100件  | 


