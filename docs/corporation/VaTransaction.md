# SwaggerClient::VaTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**va_id** | **String** | 振込入金口座ID 半角数字 振込入金口座を識別するID  | 
**transaction_date** | **String** | 取引日 半角文字 YYYY-MM-DD形式  | 
**value_date** | **String** | 起算日 半角文字 YYYY-MM-DD形式  | 
**va_branch_code** | **String** | 支店コード 半角数字  | 
**va_branch_name_kana** | **String** | 支店名カナ 半角文字  | 
**va_account_number** | **String** | 口座番号 半角数字  | 
**va_account_name_kana** | **String** | 口座名義カナ 半角文字  | 
**deposit_amount** | **String** | 入金金額 半角数字  | 
**remitter_name_kana** | **String** | 振込依頼人名カナ 半角文字  | 
**payment_bank_name** | **String** | 仕向金融機関名カナ 半角文字  | 
**payment_branch_name** | **String** | 仕向支店名カナ 半角文字  | 
**partner_name** | **String** | サービス企業名 全角文字 振込入金口座契約サービス企業名  | 
**remarks** | **String** | 摘要内容 全半角文字 該当データがない場合は項目自体を設定しません  | [optional] 
**item_key** | **String** | 明細キー 半角数字 口座ID毎に設定される明細キー（明細データtimestamp（μs）） | 


