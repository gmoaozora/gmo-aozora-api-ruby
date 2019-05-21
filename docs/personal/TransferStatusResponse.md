# SwaggerClient::TransferStatusResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acceptance_key_class** | **String** | 照会対象キー区分 半角数字 リクエストしたときと同じ内容 照会対象のキー 1：振込申請照会対象指定、2：振込一括照会対象指定  | 
**base_date** | **String** | 基準日 半角文字 振込照会明細情報を照会した基準日を示します YYYY-MM-DD形式  | 
**base_time** | **String** | 基準時刻 半角文字 振込照会明細情報を照会した基準時刻を示します HH:MM:SS+09:00形式  | 
**count** | **String** | 明細取得件数 半角数字 振込明細の件数  | 
**transfer_query_bulk_responses** | [**Array&lt;TransferQueryBulkResponse&gt;**](TransferQueryBulkResponse.md) | 振込一括照会対象指定レスポンス 該当する情報が無い場合は項目自体を設定しません  | [optional] 
**transfer_details** | [**Array&lt;TransferDetail&gt;**](TransferDetail.md) | 振込照会明細情報 振込照会明細情報のリスト 該当する情報が無い場合は空のリストを返却  | [optional] 


