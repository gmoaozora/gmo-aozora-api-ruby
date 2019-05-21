# SwaggerClient::TokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** | アクセストークン。 各APIを要求する際「x-access-token」に設定する値。  | 
**refresh_token** | **String** | 新しいアクセストークンを取得する際に使用するリフレッシュトークン。  | 
**scope** | **String** | アクセストークンに紐付く許諾されたスコープ。 | 
**token_type** | **String** | アクセストークンに紐付く許諾されたスコープ。 | 
**expires_in** | **String** | アクセストークンの有効期限。(秒単位) | 
**id_token** | **String** | IDトークン。 JWT形式で応答される。 | [optional] 


