# SwaggerClient::BulkTransferRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | 口座ID 半角英数字 口座を識別するID  | 
**remitter_name** | **String** | 振込依頼人名 半角文字 指定しない場合は口座名義がデフォルト値となります 振込許容文字を指定可 ただし、一部の非許容文字は、許容文字に変換を行います 40文字目まで有効（41文字目以降は切り捨てます）  | [optional] 
**transfer_designated_date** | **String** | 振込指定日 半角文字 YYYY-MM-DD形式 振込対象の指定日 ただし、振込指定日が非営業日で、非営業日に実施できない振込（他行宛振込み）が振込情報に1件以上存在する場合、以下のとおりとなります ・「振込指定日休日コード」が1または省略の場合、振込指定日の翌営業日を振込対象の指定日となります ・「振込指定日休日コード」が2の場合、振込指定日の前営業日を振込対象の指定日となります ・「振込指定日休日コード」が3の場合、エラーとなり「400 Bad Request」を返却します  | 
**transfer_date_holiday_code** | **String** | 振込指定日休日コード 半角数字 1：翌営業日、2：前営業日、3：エラー返却 省略可（省略した場合は1とみなします）  | [optional] 
**transfer_data_name** | **String** | 振込データ名 全半角文字 作成した総合振込のデータを区別するためのメモ  | [optional] 
**total_count** | **String** | 合計件数 半角数字 1以上9,999件まで指定可能（0はエラー）  | 
**total_amount** | **String** | 合計金額 半角数字 1以上999,999,999,999円以下　数値のみで0、カンマ、マイナス不可  | 
**apply_comment** | **String** | 振込申請メモ（申請コメント） 全半角文字 項目自体の設定が不要 値を設定しても銀行で読み捨て  | [optional] 
**bulk_transfers** | [**Array&lt;BulkTransfer&gt;**](BulkTransfer.md) | 総合振込明細情報 総合振込明細のリスト | 


