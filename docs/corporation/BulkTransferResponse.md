# SwaggerClient::BulkTransferResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | 口座ID 半角英数字 口座を識別するID  | [optional] 
**remitter_name** | **String** | 振込依頼人名 半角文字  | [optional] 
**transfer_designated_date** | **String** | 振込指定日 半角文字 YYYY-MM-DD形式  | [optional] 
**transfer_data_name** | **String** | 振込データ名 全半角文字 作成した総合振込のデータを区別するためのメモ  | [optional] 
**total_count** | **String** | 合計件数 半角数字  | [optional] 
**total_amount** | **String** | 合計金額 半角数字  | [optional] 
**bulk_transfer_infos** | [**Array&lt;BulkTransferInfo&gt;**](BulkTransferInfo.md) | 総合振込明細情報 総合振込明細のリスト 明細情報取得フラグが「True：取得する」、かつ明細情報取得結果フラグが「True：取得可」のときのみ設定します それ以外は項目自体を設定しません  | [optional] 


