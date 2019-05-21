# SwaggerClient::BulkTransfer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_id** | **String** | 明細番号 半角数字 重複/0はエラー　1～9999とします  | 
**beneficiary_bank_code** | **String** | 被仕向金融機関番号 半角数字  | 
**beneficiary_bank_name** | **String** | 被仕向金融機関名カナ 半角文字 参考値、処理に利用しません  | [optional] 
**beneficiary_branch_code** | **String** | 被仕向支店番号 半角数字  | 
**beneficiary_branch_name** | **String** | 被仕向支店名カナ 半角文字 参考値、処理に利用しません  | [optional] 
**clearing_house_name** | **String** | 手形交換所番号 半角文字 入力する場合は、ALL０,ALLスペースであること 参考値、処理に利用しません  | [optional] 
**account_type_code** | **String** | 科目コード（預金種別コード） 半角数字 1：普通、2：当座、4：貯蓄、9：その他  | 
**account_number** | **String** | 口座番号 半角数字 7桁未満の番号は右詰で、前ゼロで埋めること  | 
**beneficiary_name** | **String** | 受取人名 半角文字 振込許容文字を指定可 ただし、一部の非許容文字は、許容文字に変換を行います 30文字目まで有効（31文字目以降は切り捨てます）  | 
**transfer_amount** | **String** | 振込金額 半角数字 1以上9,999,999,999円以下　数値のみでカンマ、マイナス不可  | 
**new_code** | **String** | 新規コード 半角文字 入力する場合は、数値またはスペースであること 参考値、処理に利用しません  | [optional] 
**edi_info** | **String** | EDI情報 半角文字 振込許容文字を指定可  | [optional] 
**transfer_designated_type** | **String** | 振込指定区分 半角文字 入力する場合は、7：電信のみ　またはスペースであること 参考値、処理に利用しません（入力にかかわらず、すべて7：電信扱いとなります）  | [optional] 
**identification** | **String** | 識別表示 半角文字 本項目が「Y」であればEDI情報は振込先に通知、または省略/NULL/スペースであれば振込先には通知しません  | [optional] 


