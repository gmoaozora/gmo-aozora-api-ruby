# SwaggerClient::VisaTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**use_date** | **String** | 利用日 半角文字 YYYY-MM-DD形式  | [optional]
**use_content** | **String** | 利用内容 半角文字 | [optional]
**amount** | **String** | 利用金額 半角数字 マイナス含む 円貨金額 | [optional]
**local_currency_amount** | **String** | 現地通貨金額 半角数字 小数部最大6桁 マイナス含む 国内利用の場合は項目自体を設定しません | [optional]
**conversion_rate** | **String** | 円換算レート 半角数字 小数部最大6桁 マイナス含む 国内利用の場合は項目自体を設定しません | [optional]
**approval_number** | **String** | 承認番号 半角数字 | [optional]
**visa_status** | **String** | ステータス 半角数字 1:確定・・・決済として完了している状態 2:未確定・・・加盟店からの情報によりお客様の口座から資金を引き落としていますが、決済としては完了していない状態 3:取消済・・・取消を行った状態 | [optional]
**currency_code** | **String** | 通貨コード 半角文字 ISO4217準拠した通貨コード 国内利用の場合は項目自体を設定しません | [optional]
**atm_commission** | **String** | ATM手数料 半角数字 小数点および小数部最大6桁、マイナス含む 現地通貨金額でのATM手数料 国内利用の場合または、ATM手数料が発生していない場合は項目自体を設定しません  | [optional]
