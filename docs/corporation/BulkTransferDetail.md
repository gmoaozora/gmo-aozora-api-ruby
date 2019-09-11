# SwaggerClient::BulkTransferDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transfer_status** | **String** | 振込ステータス 半角数字 2:申請中、3:差戻、4:取下げ、5:期限切れ、8:承認取消/予約取消、 11:予約中、12:手続中、13:リトライ中、 20:手続済、30:不能・組戻あり、40:手続不成立  | [optional] 
**transfer_status_name** | **String** | 振込ステータス名 全角文字  | [optional] 
**transfer_type_name** | **String** | 種類 全角文字 総合振込　を表示  | [optional] 
**remitter_code** | **String** | 会社コード(振込依頼人コード) 銀行側で番号を付与している場合のみ表示 該当する情報が無い場合は項目自体を設定しません  | [optional] 
**is_fee_free_use** | **BOOLEAN** | 振込無料回数利用可否 振込利用回数の利用可否（無料回数の利用可否の設定であり、実際の利用有無ではありません） 総合振込では無料回数は利用できないため、常にfalse  | [optional] 
**is_fee_point_use** | **BOOLEAN** | ポイント利用可否 ポイント会社の利用可否  | [optional] 
**point_name** | **String** | ポイント会社名 全角文字  | [optional] 
**fee_later_payment_flg** | **BOOLEAN** | 手数料後払区分 「true&#x3D;後払い」以外の場合は項目自体を設定しません  | [optional] 
**total_fee** | **String** | 合計手数料 半角数字 振り込み完了時以外は、予定の手数料  | [optional] 
**total_debit_amount** | **String** | 合計出金金額 半角数字 手数料+振込金額　ただし、振込完了時以外は、予定の手数料  | [optional] 
**transfer_applies** | [**Array&lt;TransferApply&gt;**](TransferApply.md) | 振込申請情報 振込申請情報のリスト  | [optional] 
**transfer_accepts** | [**Array&lt;TransferAccept&gt;**](TransferAccept.md) | 振込受付情報 振込受付情報のリスト 該当する情報が無い場合は空のリストを返却  | [optional] 
**bulktransfer_responses** | [**Array&lt;BulkTransferResponse&gt;**](BulkTransferResponse.md) | 総合振込レスポンス情報 総合振込レスポンス情報のリスト 該当する情報が無い場合は空のリストを返却  | [optional] 


