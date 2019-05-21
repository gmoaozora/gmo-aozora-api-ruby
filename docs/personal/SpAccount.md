# SwaggerClient::SpAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | 口座ID 半角英数字 つかいわけ口座を識別するID  | 
**sp_account_type_code** | **String** | つかいわけ口座種別コード 半角数字 ・1&#x3D;親口座 ・2&#x3D;子口座  | 
**sp_account_type_code_name** | **String** | つかいわけ口座種別コード名称 全角文字 つかいわけ口座種別コードの名称  | 
**sp_account_name** | **String** | つかいわけ口座名 全半角英数記号文字  | 
**sp_account_branch_code** | **String** | 支店コード 半角数字 つかいわけ口座種別コードが「2&#x3D;子口座」の場合のみ設定 該当しない場合は項目自体を設定しません  | [optional] 
**sp_account_branch_name** | **String** | 支店名 全角文字 つかいわけ口座種別コードが「2&#x3D;子口座」の場合のみ設定 該当しない場合は項目自体を設定しません  | [optional] 
**sp_account_number** | **String** | 口座番号 半角数字 つかいわけ口座種別コードが「2&#x3D;子口座」の場合のみ設定 該当しない場合は項目自体を設定しません  | [optional] 


