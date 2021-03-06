=begin
#GMO Aozora Net Bank Open API

#<p>オープンAPI仕様書（PDF版）は下記リンクをご参照ください</p> <div>   <div style='display:inline-block;'><a style='text-decoration:none; font-weight:bold; color:#00b8d4;' href='https://gmo-aozora.com/business/service/api-specification.html' target='_blank'>オープンAPI仕様書</a></div><div style='display:inline-block; margin-left:2px; left:2px; width:10px; height:10px; border-top:2px solid #00b8d4; border-right:2px solid #00b8d4; transparent;-webkit-transform:rotate(45deg); transform: rotate(45deg);'></div> </div> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>共通仕様</h4> <div style='width:100%; margin:10px;'>   <p style='font-weight:bold; color:#616161;'>＜HTTPリクエストヘッダ＞</p>   <div style='display:table; margin-left:10px; background-color:#29659b;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff;'>項目</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; color:#fff;'>仕様</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>プロトコル</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>HTTP1.1/HTTPS</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>charset</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>UTF-8</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>content-type</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>application/json</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>domain_name</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       本番環境：api.gmo-aozora.com</br>       開発環境：stg-api.gmo-aozora.com     </div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>メインURL</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       https://{domain_name}/ganb/api/corporation/{version}</br>       <span style='border-bottom:solid 1px;'>Version:1.x.x</span> の場合</br>       　https://api.gmo-aozora.com/ganb/api/corporation/<span style='border-bottom:solid 1px;'>v1</span>     </div>   </div> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜リクエスト共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <p style='padding-left:40px;'>パラメータの値が空の場合、またはパラメータ自体が設定されていない場合、どちらもNULLとして扱います</p> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜レスポンス共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <ul>     <li>レスポンスデータ</li>       <ul>         <li style='list-style-type:none;'>レスポンスデータの値が空の場合または、レスポンスデータ自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>     <li>配列</li>       <ul>         <li style='list-style-type:none;'>配列の要素の値が空の場合は「空のリスト」と記載</li>         <li style='list-style-type:none;'>配列自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>   </ul> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜更新系APIに関する注意事項＞</p>   <ul>     <li style='list-style-type:none;'>更新系処理がタイムアウトとなった場合、処理自体は実行されている可能性がありますので、</li>     <li style='list-style-type:none;'>再実行を行う必要がある場合は必ず照会系の処理で実行状況を確認してから再実行を行ってください</li>   </ul> </div> 

OpenAPI spec version: 1.1.12

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'date'

module SwaggerClient
  class Account
    # 口座ID 半角英数字 口座を識別するID 
    attr_accessor :account_id

    # 支店コード 半角数字 科目コードが以下の場合のみ設定されます 該当しない場合は項目自体を設定しません ・01=普通預金（有利息） ・02=普通預金（決済用） 
    attr_accessor :branch_code

    # 支店名 全角文字 科目コードが以下の場合のみ設定されます 該当しない場合は項目自体を設定しません ・01=普通預金（有利息） ・02=普通預金（決済用） 
    attr_accessor :branch_name

    # 科目コード 半角数字 ・01=普通預金（有利息） ・02=普通預金（決済用） ・11=円定期預金 ・51=外貨普通預金 ・81=証券コネクト口座 
    attr_accessor :account_type_code

    # 科目名 全角文字 科目コードの名称 
    attr_accessor :account_type_name

    # 口座番号 半角数字 科目コードが以下の場合のみ設定されます 該当しない場合は項目自体を設定しません ・01=普通預金（有利息） ・02=普通預金（決済用） 
    attr_accessor :account_number

    # 代表口座コード 半角数字 ・1=代表口座 ・2=追加口座 科目コードが以下の場合のみ設定されます 該当しない場合は項目自体を設定しません ・01=普通預金（有利息） ・02=普通預金（決済用） 
    attr_accessor :primary_account_code

    # 代表口座コード名 全角文字 科目コードが以下の場合のみ設定されます 該当しない場合は項目自体を設定しません ・01=普通預金（有利息） ・02=普通預金（決済用） 
    attr_accessor :primary_account_code_name

    # 口座名義 全角文字 科目コードが以下の場合のみ設定されます 該当しない場合は項目自体を設定しません ・01=普通預金（有利息） ・02=普通預金（決済用） 
    attr_accessor :account_name

    # 口座名義カナ 半角文字 科目コードが以下の場合のみ設定されます 該当しない場合は項目自体を設定しません ・01=普通預金（有利息） ・02=普通預金（決済用） 
    attr_accessor :account_name_kana

    # 通貨コード 半角文字 ISO4217に準拠した通貨コード 
    attr_accessor :currency_code

    # 通貨名 全角文字 ISO4217に準拠した通貨コードの当行での名称 
    attr_accessor :currency_name

    # 振込限度額 半角数字 科目コードが以下の場合のみ設定されます 該当しない場合は項目自体を設定しません ・01=普通預金（有利息） ・02=普通預金（決済用） 
    attr_accessor :transfer_limit_amount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'branch_code' => :'branchCode',
        :'branch_name' => :'branchName',
        :'account_type_code' => :'accountTypeCode',
        :'account_type_name' => :'accountTypeName',
        :'account_number' => :'accountNumber',
        :'primary_account_code' => :'primaryAccountCode',
        :'primary_account_code_name' => :'primaryAccountCodeName',
        :'account_name' => :'accountName',
        :'account_name_kana' => :'accountNameKana',
        :'currency_code' => :'currencyCode',
        :'currency_name' => :'currencyName',
        :'transfer_limit_amount' => :'transferLimitAmount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'branch_code' => :'String',
        :'branch_name' => :'String',
        :'account_type_code' => :'String',
        :'account_type_name' => :'String',
        :'account_number' => :'String',
        :'primary_account_code' => :'String',
        :'primary_account_code_name' => :'String',
        :'account_name' => :'String',
        :'account_name_kana' => :'String',
        :'currency_code' => :'String',
        :'currency_name' => :'String',
        :'transfer_limit_amount' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'branchCode')
        self.branch_code = attributes[:'branchCode']
      end

      if attributes.has_key?(:'branchName')
        self.branch_name = attributes[:'branchName']
      end

      if attributes.has_key?(:'accountTypeCode')
        self.account_type_code = attributes[:'accountTypeCode']
      end

      if attributes.has_key?(:'accountTypeName')
        self.account_type_name = attributes[:'accountTypeName']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'primaryAccountCode')
        self.primary_account_code = attributes[:'primaryAccountCode']
      end

      if attributes.has_key?(:'primaryAccountCodeName')
        self.primary_account_code_name = attributes[:'primaryAccountCodeName']
      end

      if attributes.has_key?(:'accountName')
        self.account_name = attributes[:'accountName']
      end

      if attributes.has_key?(:'accountNameKana')
        self.account_name_kana = attributes[:'accountNameKana']
      end

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'currencyName')
        self.currency_name = attributes[:'currencyName']
      end

      if attributes.has_key?(:'transferLimitAmount')
        self.transfer_limit_amount = attributes[:'transferLimitAmount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @account_id.to_s.length > 29
        invalid_properties.push('invalid value for "account_id", the character length must be smaller than or equal to 29.')
      end

      if @account_id.to_s.length < 12
        invalid_properties.push('invalid value for "account_id", the character length must be great than or equal to 12.')
      end

      if !@branch_code.nil? && @branch_code.to_s.length > 3
        invalid_properties.push('invalid value for "branch_code", the character length must be smaller than or equal to 3.')
      end

      if !@branch_code.nil? && @branch_code.to_s.length < 3
        invalid_properties.push('invalid value for "branch_code", the character length must be great than or equal to 3.')
      end

      if !@branch_name.nil? && @branch_name.to_s.length > 30
        invalid_properties.push('invalid value for "branch_name", the character length must be smaller than or equal to 30.')
      end

      if !@branch_name.nil? && @branch_name.to_s.length < 1
        invalid_properties.push('invalid value for "branch_name", the character length must be great than or equal to 1.')
      end

      if @account_type_code.nil?
        invalid_properties.push('invalid value for "account_type_code", account_type_code cannot be nil.')
      end

      if @account_type_code.to_s.length > 2
        invalid_properties.push('invalid value for "account_type_code", the character length must be smaller than or equal to 2.')
      end

      if @account_type_code.to_s.length < 2
        invalid_properties.push('invalid value for "account_type_code", the character length must be great than or equal to 2.')
      end

      if @account_type_name.nil?
        invalid_properties.push('invalid value for "account_type_name", account_type_name cannot be nil.')
      end

      if @account_type_name.to_s.length > 10
        invalid_properties.push('invalid value for "account_type_name", the character length must be smaller than or equal to 10.')
      end

      if @account_type_name.to_s.length < 1
        invalid_properties.push('invalid value for "account_type_name", the character length must be great than or equal to 1.')
      end

      if !@account_number.nil? && @account_number.to_s.length > 7
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 7.')
      end

      if !@account_number.nil? && @account_number.to_s.length < 7
        invalid_properties.push('invalid value for "account_number", the character length must be great than or equal to 7.')
      end

      if !@primary_account_code.nil? && @primary_account_code.to_s.length > 1
        invalid_properties.push('invalid value for "primary_account_code", the character length must be smaller than or equal to 1.')
      end

      if !@primary_account_code.nil? && @primary_account_code.to_s.length < 1
        invalid_properties.push('invalid value for "primary_account_code", the character length must be great than or equal to 1.')
      end

      if !@primary_account_code_name.nil? && @primary_account_code_name.to_s.length > 4
        invalid_properties.push('invalid value for "primary_account_code_name", the character length must be smaller than or equal to 4.')
      end

      if !@primary_account_code_name.nil? && @primary_account_code_name.to_s.length < 1
        invalid_properties.push('invalid value for "primary_account_code_name", the character length must be great than or equal to 1.')
      end

      if !@account_name.nil? && @account_name.to_s.length > 48
        invalid_properties.push('invalid value for "account_name", the character length must be smaller than or equal to 48.')
      end

      if !@account_name.nil? && @account_name.to_s.length < 1
        invalid_properties.push('invalid value for "account_name", the character length must be great than or equal to 1.')
      end

      if !@account_name_kana.nil? && @account_name_kana.to_s.length > 48
        invalid_properties.push('invalid value for "account_name_kana", the character length must be smaller than or equal to 48.')
      end

      if !@account_name_kana.nil? && @account_name_kana.to_s.length < 1
        invalid_properties.push('invalid value for "account_name_kana", the character length must be great than or equal to 1.')
      end

      if @currency_code.nil?
        invalid_properties.push('invalid value for "currency_code", currency_code cannot be nil.')
      end

      if @currency_code.to_s.length > 3
        invalid_properties.push('invalid value for "currency_code", the character length must be smaller than or equal to 3.')
      end

      if @currency_code.to_s.length < 3
        invalid_properties.push('invalid value for "currency_code", the character length must be great than or equal to 3.')
      end

      if @currency_name.nil?
        invalid_properties.push('invalid value for "currency_name", currency_name cannot be nil.')
      end

      if @currency_name.to_s.length > 10
        invalid_properties.push('invalid value for "currency_name", the character length must be smaller than or equal to 10.')
      end

      if @currency_name.to_s.length < 1
        invalid_properties.push('invalid value for "currency_name", the character length must be great than or equal to 1.')
      end

      if !@transfer_limit_amount.nil? && @transfer_limit_amount.to_s.length > 12
        invalid_properties.push('invalid value for "transfer_limit_amount", the character length must be smaller than or equal to 12.')
      end

      if !@transfer_limit_amount.nil? && @transfer_limit_amount.to_s.length < 1
        invalid_properties.push('invalid value for "transfer_limit_amount", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_id.nil?
      return false if @account_id.to_s.length > 29
      return false if @account_id.to_s.length < 12
      return false if !@branch_code.nil? && @branch_code.to_s.length > 3
      return false if !@branch_code.nil? && @branch_code.to_s.length < 3
      return false if !@branch_name.nil? && @branch_name.to_s.length > 30
      return false if !@branch_name.nil? && @branch_name.to_s.length < 1
      return false if @account_type_code.nil?
      return false if @account_type_code.to_s.length > 2
      return false if @account_type_code.to_s.length < 2
      return false if @account_type_name.nil?
      return false if @account_type_name.to_s.length > 10
      return false if @account_type_name.to_s.length < 1
      return false if !@account_number.nil? && @account_number.to_s.length > 7
      return false if !@account_number.nil? && @account_number.to_s.length < 7
      return false if !@primary_account_code.nil? && @primary_account_code.to_s.length > 1
      return false if !@primary_account_code.nil? && @primary_account_code.to_s.length < 1
      return false if !@primary_account_code_name.nil? && @primary_account_code_name.to_s.length > 4
      return false if !@primary_account_code_name.nil? && @primary_account_code_name.to_s.length < 1
      return false if !@account_name.nil? && @account_name.to_s.length > 48
      return false if !@account_name.nil? && @account_name.to_s.length < 1
      return false if !@account_name_kana.nil? && @account_name_kana.to_s.length > 48
      return false if !@account_name_kana.nil? && @account_name_kana.to_s.length < 1
      return false if @currency_code.nil?
      return false if @currency_code.to_s.length > 3
      return false if @currency_code.to_s.length < 3
      return false if @currency_name.nil?
      return false if @currency_name.to_s.length > 10
      return false if @currency_name.to_s.length < 1
      return false if !@transfer_limit_amount.nil? && @transfer_limit_amount.to_s.length > 12
      return false if !@transfer_limit_amount.nil? && @transfer_limit_amount.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_id Value to be assigned
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'account_id cannot be nil'
      end

      if account_id.to_s.length > 29
        fail ArgumentError, 'invalid value for "account_id", the character length must be smaller than or equal to 29.'
      end

      if account_id.to_s.length < 12
        fail ArgumentError, 'invalid value for "account_id", the character length must be great than or equal to 12.'
      end

      @account_id = account_id
    end

    # Custom attribute writer method with validation
    # @param [Object] branch_code Value to be assigned
    def branch_code=(branch_code)
      if !branch_code.nil? && branch_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "branch_code", the character length must be smaller than or equal to 3.'
      end

      if !branch_code.nil? && branch_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "branch_code", the character length must be great than or equal to 3.'
      end

      @branch_code = branch_code
    end

    # Custom attribute writer method with validation
    # @param [Object] branch_name Value to be assigned
    def branch_name=(branch_name)
      if !branch_name.nil? && branch_name.to_s.length > 30
        fail ArgumentError, 'invalid value for "branch_name", the character length must be smaller than or equal to 30.'
      end

      if !branch_name.nil? && branch_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "branch_name", the character length must be great than or equal to 1.'
      end

      @branch_name = branch_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_type_code Value to be assigned
    def account_type_code=(account_type_code)
      if account_type_code.nil?
        fail ArgumentError, 'account_type_code cannot be nil'
      end

      if account_type_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "account_type_code", the character length must be smaller than or equal to 2.'
      end

      if account_type_code.to_s.length < 2
        fail ArgumentError, 'invalid value for "account_type_code", the character length must be great than or equal to 2.'
      end

      @account_type_code = account_type_code
    end

    # Custom attribute writer method with validation
    # @param [Object] account_type_name Value to be assigned
    def account_type_name=(account_type_name)
      if account_type_name.nil?
        fail ArgumentError, 'account_type_name cannot be nil'
      end

      if account_type_name.to_s.length > 10
        fail ArgumentError, 'invalid value for "account_type_name", the character length must be smaller than or equal to 10.'
      end

      if account_type_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "account_type_name", the character length must be great than or equal to 1.'
      end

      @account_type_name = account_type_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if !account_number.nil? && account_number.to_s.length > 7
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 7.'
      end

      if !account_number.nil? && account_number.to_s.length < 7
        fail ArgumentError, 'invalid value for "account_number", the character length must be great than or equal to 7.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] primary_account_code Value to be assigned
    def primary_account_code=(primary_account_code)
      if !primary_account_code.nil? && primary_account_code.to_s.length > 1
        fail ArgumentError, 'invalid value for "primary_account_code", the character length must be smaller than or equal to 1.'
      end

      if !primary_account_code.nil? && primary_account_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "primary_account_code", the character length must be great than or equal to 1.'
      end

      @primary_account_code = primary_account_code
    end

    # Custom attribute writer method with validation
    # @param [Object] primary_account_code_name Value to be assigned
    def primary_account_code_name=(primary_account_code_name)
      if !primary_account_code_name.nil? && primary_account_code_name.to_s.length > 4
        fail ArgumentError, 'invalid value for "primary_account_code_name", the character length must be smaller than or equal to 4.'
      end

      if !primary_account_code_name.nil? && primary_account_code_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "primary_account_code_name", the character length must be great than or equal to 1.'
      end

      @primary_account_code_name = primary_account_code_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_name Value to be assigned
    def account_name=(account_name)
      if !account_name.nil? && account_name.to_s.length > 48
        fail ArgumentError, 'invalid value for "account_name", the character length must be smaller than or equal to 48.'
      end

      if !account_name.nil? && account_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "account_name", the character length must be great than or equal to 1.'
      end

      @account_name = account_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_name_kana Value to be assigned
    def account_name_kana=(account_name_kana)
      if !account_name_kana.nil? && account_name_kana.to_s.length > 48
        fail ArgumentError, 'invalid value for "account_name_kana", the character length must be smaller than or equal to 48.'
      end

      if !account_name_kana.nil? && account_name_kana.to_s.length < 1
        fail ArgumentError, 'invalid value for "account_name_kana", the character length must be great than or equal to 1.'
      end

      @account_name_kana = account_name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_code Value to be assigned
    def currency_code=(currency_code)
      if currency_code.nil?
        fail ArgumentError, 'currency_code cannot be nil'
      end

      if currency_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency_code", the character length must be smaller than or equal to 3.'
      end

      if currency_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency_code", the character length must be great than or equal to 3.'
      end

      @currency_code = currency_code
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_name Value to be assigned
    def currency_name=(currency_name)
      if currency_name.nil?
        fail ArgumentError, 'currency_name cannot be nil'
      end

      if currency_name.to_s.length > 10
        fail ArgumentError, 'invalid value for "currency_name", the character length must be smaller than or equal to 10.'
      end

      if currency_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "currency_name", the character length must be great than or equal to 1.'
      end

      @currency_name = currency_name
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_limit_amount Value to be assigned
    def transfer_limit_amount=(transfer_limit_amount)
      if !transfer_limit_amount.nil? && transfer_limit_amount.to_s.length > 12
        fail ArgumentError, 'invalid value for "transfer_limit_amount", the character length must be smaller than or equal to 12.'
      end

      if !transfer_limit_amount.nil? && transfer_limit_amount.to_s.length < 1
        fail ArgumentError, 'invalid value for "transfer_limit_amount", the character length must be great than or equal to 1.'
      end

      @transfer_limit_amount = transfer_limit_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          branch_code == o.branch_code &&
          branch_name == o.branch_name &&
          account_type_code == o.account_type_code &&
          account_type_name == o.account_type_name &&
          account_number == o.account_number &&
          primary_account_code == o.primary_account_code &&
          primary_account_code_name == o.primary_account_code_name &&
          account_name == o.account_name &&
          account_name_kana == o.account_name_kana &&
          currency_code == o.currency_code &&
          currency_name == o.currency_name &&
          transfer_limit_amount == o.transfer_limit_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, branch_code, branch_name, account_type_code, account_type_name, account_number, primary_account_code, primary_account_code_name, account_name, account_name_kana, currency_code, currency_name, transfer_limit_amount].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
