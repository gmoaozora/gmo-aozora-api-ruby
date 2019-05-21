# SwaggerClient::PaymentArrival

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_date** | **String** | 取引日 半角文字 YYYY-MM-DD形式  | 
**value_date** | **String** | 起算日 半角文字 YYYY-MM-DD形式  | 
**transaction_type** | **String** | 入払コード 半角数字 ・1&#x3D;入金 ・2&#x3D;出金 常に1&#x3D;入金のみ  | 
**remarks** | **String** | 摘要内容 全半角文字 該当データがない場合は項目自体を設定しません  | [optional] 
**amount** | **String** | 取引金額 半角数字　マイナス含む  | 
**applicant_name** | **String** | 依頼人名 半角文字 該当データがない場合は項目自体を設定しません  | [optional] 
**payment_bank_name** | **String** | 仕向金融機関名カナ 半角文字  | [optional] 
**payment_branch_name** | **String** | 仕向支店名カナ 半角文字  | [optional] 
**edi_info** | **String** | EDI情報 半角文字 該当データがない場合は項目自体を設定しません  | [optional] 
**item_key** | **String** | 明細キー 半角数字 口座ID毎に設定される明細キー（明細データtimestamp（μs））  | 


