# SwaggerClient::VaListRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**va_contract_auth_key** | **String** | 振込入金口座API認証情報 半角英数字 銀行契約の方はNULLを設定 提携企業の方が、契約された顧客の一覧照会を依頼される場合は必須 提携企業以外の方が値を設定されている場合は「400 Bad Request」を返却  | [optional] 
**va_type_code** | **String** | 振込入金口座　種類コード 半角数字 ・1&#x3D;期限型 ・2&#x3D;継続型  | [optional] 
**deposit_amount_exist_code** | **String** | 入金有無コード 半角数字 ・1&#x3D;入金あり ・2&#x3D;入金なし  | [optional] 
**va_holder_name_kana** | **String** | 振込入金口座名義カナ 半角文字 振込許容文字を指定可 ただし、一部の非許容文字は、許容文字に変換を行います  | [optional] 
**va_status_code_list** | [**Array&lt;VaStatusCode&gt;**](VaStatusCode.md) | 振込入金口座IDリスト 照会したい振込入金口座状態コードのリスト 上限3件まで設定可能  | [optional] 
**latest_deposit_date_from** | **String** | 最終入金日From 半角文字 YYYY-MM-DD形式 入金有無コードが未設定もしくは、「1&#x3D;入金あり」が設定されている場合は指定可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）  | [optional] 
**latest_deposit_date_to** | **String** | 最終入金日To 半角文字 YYYY-MM-DD形式 入金有無コードが未設定もしくは、「1&#x3D;入金あり」が設定されている場合は指定可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 最終入金日Fromと最終入金日Toを指定する場合は、最終入金日From≦最終入金日Toとし、それ以外は「400 Bad Request」を返却  | [optional] 
**va_issue_date_from** | **String** | 振込入金口座発行日From 半角文字 YYYY-MM-DD形式  | [optional] 
**va_issue_date_to** | **String** | 振込入金口座発行日To 半角文字 YYYY-MM-DD形式 振込入金口座発行Fromと振込入金口座発行Toを指定する場合は、振込入金口座発行From≦振込入金口座発行Toとし、それ以外は「400 Bad Request」を返却  | [optional] 
**expire_date_from** | **String** | 有効期限From 半角文字 YYYY-MM-DD形式 振込入金口座 種類コードが未設定もしくは、「1＝期限型」が設定されている場合は指定可　それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）  | [optional] 
**expire_date_to** | **String** | 有効期限To 半角文字 YYYY-MM-DD形式 振込入金口座 種類コードが未設定もしくは、「1＝期限型」が設定されている場合は指定可　それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 有効期限Fromと有効期限Toを指定する場合は、有効期限From≦有効期限Toとし、それ以外は「400 Bad Request」を返却  | [optional] 
**ra_id** | **String** | 入金口座ID 半角数字 口座一覧照会APIで取得できる口座IDを設定 科目コードが以下の口座IDのみ受け付けます ・01&#x3D;普通預金（有利息） ・02&#x3D;普通預金（決済用）  | [optional] 
**next_item_key** | **String** | 次一覧キー 半角英数字  | [optional] 
**sort_item_code** | **String** | ソート項目コード 半角数字 ・1&#x3D;有効期限日時 ・2&#x3D;最終入金日 ・3&#x3D;発行日時 ・4&#x3D;最終入金金額 有効期限日時、最終入金日、最終入金金額など、レスポンスで返却されない場合がある項目をソート項目に指定した場合、ソートは効きません  | [optional] 
**sort_order_code** | **String** | ソート順コード 半角数字 ソート項目コードのソート順を指定するコード値 ・1&#x3D;昇順 ・2&#x3D;降順  | [optional] 
**va_id_list** | [**Array&lt;VaId&gt;**](VaId.md) | 振込入金口座IDリスト 照会したい振込入金口座IDのリスト 上限500件まで設定可能  | [optional] 


