# SwaggerClient::ErrorResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | エラーコード ・invalid_request:要求パラメータが不正(必須パラメータ:パラメータキー要求なし、パラメータの値が空)  ・invalid_client:指定されたクライアント、またはクライアント情報が不正  ・invalid_grant:認可コードが不正、またはリダイレクトURIが不正  ・unauthorized_client:クライアントがグラントタイプauthorization_codeの利用を許可されていない  ・unsupported_grant_type:API-GWがサポートしていないグラントタイプが指定された  ・invalid_scope:指定されたスコープが不正  ・server_error:OPサーバでエラーが発生 | 
**error_description** | **String** | エラー内容(ASCIIコード「%x20-21 / %x23-5B / %x5D-7E」の範囲の文字種) | [optional] 
**error_uri** | **String** | エラー内容(ASCIIコード「%x20-21 / %x23-5B / %x5D-7E」の範囲の文字種) | [optional] 
**state** | **String** | 要求パラメータのstate | [optional] 


