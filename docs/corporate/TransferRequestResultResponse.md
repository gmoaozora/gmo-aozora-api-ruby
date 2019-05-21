# SwaggerClient::TransferRequestResultResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | 口座ID 半角数字 口座を識別するID  | 
**result_code** | **String** | 結果コード 半角数字 1:完了　2：未完了　8：期限切  | 
**apply_no** | **String** | 受付番号（振込申請番号） 半角数字 すべての振込・総合振込で採番される、照会の基本単位となる番号  | 
**apply_end_datetime** | **String** | 振込依頼完了日時 半角文字 YYYY-MM-DDTHH:MM:SS+09:00形式 結果コードが、1:完了のときのみセット 振込申請番号の最も直近の依頼の完了日時を返却 それ以外は項目自体を設定しません  | [optional] 


