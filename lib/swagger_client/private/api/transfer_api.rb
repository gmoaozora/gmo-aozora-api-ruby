=begin
#GMO Aozora Net Bank Open API

#<p>オープンAPI仕様書（PDF版）は下記リンクをご参照ください</p> <div>   <div style='display:inline-block;'><a style='text-decoration:none; font-weight:bold; color:#00b8d4;' href='https://gmo-aozora.com/business/service/api-specification.html' target='_blank'>オープンAPI仕様書</a></div><div style='display:inline-block; margin-left:2px; left:2px; width:10px; height:10px; border-top:2px solid #00b8d4; border-right:2px solid #00b8d4; transparent;-webkit-transform:rotate(45deg); transform: rotate(45deg);'></div> </div> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>共通仕様</h4> <div style='width:100%; margin:10px;'>   <p style='font-weight:bold; color:#616161;'>＜HTTPリクエストヘッダ＞</p>   <div style='display:table; margin-left:10px; background-color:#29659b;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff;'>項目</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; color:#fff;'>仕様</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>プロトコル</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>HTTP1.1/HTTPS</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>charset</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>UTF-8</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>content-type</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>application/json</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>domain_name</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       本番環境：api.gmo-aozora.com</br>       開発環境：stg-api.gmo-aozora.com     </div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>メインURL</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       https://{domain_name}/ganb/api/personal/{version}</br>       <span style='border-bottom:solid 1px;'>Version:1.x.x</span> の場合</br>       　https://api.gmo-aozora.com/ganb/api/personal/<span style='border-bottom:solid 1px;'>v1</span>     </div>   </div> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜リクエスト共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <p style='padding-left:40px;'>パラメータの値が空の場合、またはパラメータ自体が設定されていない場合、どちらもNULLとして扱います</p> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜レスポンス共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <ul>     <li>レスポンスデータ</li>       <ul>         <li style='list-style-type:none;'>レスポンスデータの値が空の場合または、レスポンスデータ自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>     <li>配列</li>       <ul>         <li style='list-style-type:none;'>配列の要素の値が空の場合は「空のリスト」と記載</li>         <li style='list-style-type:none;'>配列自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>   </ul> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜更新系APIに関する注意事項＞</p>   <ul>     <li style='list-style-type:none;'>更新系処理がタイムアウトとなった場合、処理自体は実行されている可能性がありますので、</li>     <li style='list-style-type:none;'>再実行を行う必要がある場合は必ず照会系の処理で実行状況を確認してから再実行を行ってください</li>   </ul> </div> 

OpenAPI spec version: 1.1.12

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'uri'

module SwaggerClient
  class TransferApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default("personal"))
      @api_client = api_client
    end
    # つかいわけ口座間振替
    # つかいわけ口座間の振替を実行します 振替の実行は即時となります つかいわけ口座間の明細移動は当APIの対象外です 
    # @param body HTTPリクエストボディ
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [SpAccountTransferResponse]
    def sp_account_transfer_using_post(body, x_access_token, opts = {})
      data, _status_code, _headers = sp_account_transfer_using_post_with_http_info(body, x_access_token, opts)
      data
    end

    # つかいわけ口座間振替
    # つかいわけ口座間の振替を実行します 振替の実行は即時となります つかいわけ口座間の明細移動は当APIの対象外です 
    # @param body HTTPリクエストボディ
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpAccountTransferResponse, Fixnum, Hash)>] SpAccountTransferResponse data, response status code and response headers
    def sp_account_transfer_using_post_with_http_info(body, x_access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.sp_account_transfer_using_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TransferApi.sp_account_transfer_using_post"
      end
      # verify the required parameter 'x_access_token' is set
      if @api_client.config.client_side_validation && x_access_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_access_token' when calling TransferApi.sp_account_transfer_using_post"
      end
      # resource path
      local_var_path = '/transfer/spaccounts-transfer'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])
      header_params[:'x-access-token'] = x_access_token

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SpAccountTransferResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#sp_account_transfer_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 振込取消依頼
    # <p>振込・振込予約の取消を行うための依頼をします</p> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>詳細説明</h4> <div style='margin:10px;'>   <p style='font-weight:bold; color:#616161;'>取消対象ステータス</p>   <p style='padding-left:20px;'>申請中以降のステータスで取消が可能です</p>   <p style='padding-left:20px;'>依頼中、作成中の状態は取消対象外です</p> </div> <div style='margin:10px;'>   <p style='font-weight:bold; color:#616161;'>取消対象キー区分</p>   <p style='padding-left:20px;'>取消対象の取引の内容について指定して下さい</p>   <p style='padding-left:20px;'>取消対象キー区分と、取消対象の振込申請番号の状態がマッチしない場合は、「400 Bad Request」を返却します</p>   <p style='padding-left:20px;'>振込・振替/一括振込の対象は2のみとなります</p>   <p style='padding-left:20px;'>1、3、4は指定不可となります</p> </div> <div style='margin:10px;'>   <p style='font-weight:bold; color:#616161;'>重複した依頼</p>   <p style='padding-left:20px;'>同一の受付番号（振込申請番号）への重複した依頼はできません</p>   <p style='padding-left:20px;'>なお、前回の振込取消依頼が期限切れとなれば依頼は可能となります</p> </div> 
    # @param body HTTPリクエストボディ
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [TransferCancelResponse]
    def transfer_cancel_using_post(body, x_access_token, opts = {})
      data, _status_code, _headers = transfer_cancel_using_post_with_http_info(body, x_access_token, opts)
      data
    end

    # 振込取消依頼
    # &lt;p&gt;振込・振込予約の取消を行うための依頼をします&lt;/p&gt; &lt;h4 style&#x3D;&#39;margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;&#39;&gt;詳細説明&lt;/h4&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;取消対象ステータス&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;申請中以降のステータスで取消が可能です&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;依頼中、作成中の状態は取消対象外です&lt;/p&gt; &lt;/div&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;取消対象キー区分&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;取消対象の取引の内容について指定して下さい&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;取消対象キー区分と、取消対象の振込申請番号の状態がマッチしない場合は、「400 Bad Request」を返却します&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;振込・振替/一括振込の対象は2のみとなります&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;1、3、4は指定不可となります&lt;/p&gt; &lt;/div&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;重複した依頼&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;同一の受付番号（振込申請番号）への重複した依頼はできません&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;なお、前回の振込取消依頼が期限切れとなれば依頼は可能となります&lt;/p&gt; &lt;/div&gt; 
    # @param body HTTPリクエストボディ
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransferCancelResponse, Fixnum, Hash)>] TransferCancelResponse data, response status code and response headers
    def transfer_cancel_using_post_with_http_info(body, x_access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.transfer_cancel_using_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TransferApi.transfer_cancel_using_post"
      end
      # verify the required parameter 'x_access_token' is set
      if @api_client.config.client_side_validation && x_access_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_access_token' when calling TransferApi.transfer_cancel_using_post"
      end
      # resource path
      local_var_path = '/transfer/cancel'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])
      header_params[:'x-access-token'] = x_access_token

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransferCancelResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#transfer_cancel_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 振込手数料事前照会
    # <p>振込・振込予約を行うための依頼内容の事前チェックと手数料を照会します</p> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>詳細説明</h4> <div style='margin:10px;'>   <p style='padding-left:20px;'>最大99件まで登録可能</p>   <p style='padding-left:20px;'>1件の場合通常の振込扱いとなり、2件以上で一括振込扱いとなります</p>   <p style='padding-left:20px;'>振込無料回数とポイントについては、算出から振込実行までの間に変動する可能性があるため、手数料算出時の計算対象から除外しています</p> </div> 
    # @param body HTTPリクエストボディ
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [TransferFeeResponse]
    def transfer_fee_using_post(body, x_access_token, opts = {})
      data, _status_code, _headers = transfer_fee_using_post_with_http_info(body, x_access_token, opts)
      data
    end

    # 振込手数料事前照会
    # &lt;p&gt;振込・振込予約を行うための依頼内容の事前チェックと手数料を照会します&lt;/p&gt; &lt;h4 style&#x3D;&#39;margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;&#39;&gt;詳細説明&lt;/h4&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;最大99件まで登録可能&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;1件の場合通常の振込扱いとなり、2件以上で一括振込扱いとなります&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;振込無料回数とポイントについては、算出から振込実行までの間に変動する可能性があるため、手数料算出時の計算対象から除外しています&lt;/p&gt; &lt;/div&gt; 
    # @param body HTTPリクエストボディ
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransferFeeResponse, Fixnum, Hash)>] TransferFeeResponse data, response status code and response headers
    def transfer_fee_using_post_with_http_info(body, x_access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.transfer_fee_using_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TransferApi.transfer_fee_using_post"
      end
      # verify the required parameter 'x_access_token' is set
      if @api_client.config.client_side_validation && x_access_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_access_token' when calling TransferApi.transfer_fee_using_post"
      end
      # resource path
      local_var_path = '/transfer/transferfee'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])
      header_params[:'x-access-token'] = x_access_token

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransferFeeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#transfer_fee_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 振込依頼結果照会
    # 振込依頼、振込取消依頼の処理状態を照会します 振込取消依頼をした場合は、最後の依頼の結果コードが照会対象となります 
    # @param account_id 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29 
    # @param apply_no 受付番号（振込申請番号） 半角数字 すべての振込・総合振込で採番される、照会の基本単位となる番号  minLength: 16 maxLength: 16 
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [TransferRequestResultResponse]
    def transfer_request_result_using_get(account_id, apply_no, x_access_token, opts = {})
      data, _status_code, _headers = transfer_request_result_using_get_with_http_info(account_id, apply_no, x_access_token, opts)
      data
    end

    # 振込依頼結果照会
    # 振込依頼、振込取消依頼の処理状態を照会します 振込取消依頼をした場合は、最後の依頼の結果コードが照会対象となります 
    # @param account_id 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29 
    # @param apply_no 受付番号（振込申請番号） 半角数字 すべての振込・総合振込で採番される、照会の基本単位となる番号  minLength: 16 maxLength: 16 
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransferRequestResultResponse, Fixnum, Hash)>] TransferRequestResultResponse data, response status code and response headers
    def transfer_request_result_using_get_with_http_info(account_id, apply_no, x_access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.transfer_request_result_using_get ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TransferApi.transfer_request_result_using_get"
      end
      # verify the required parameter 'apply_no' is set
      if @api_client.config.client_side_validation && apply_no.nil?
        fail ArgumentError, "Missing the required parameter 'apply_no' when calling TransferApi.transfer_request_result_using_get"
      end
      # verify the required parameter 'x_access_token' is set
      if @api_client.config.client_side_validation && x_access_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_access_token' when calling TransferApi.transfer_request_result_using_get"
      end
      # resource path
      local_var_path = '/transfer/request-result'

      # query parameters
      query_params = {}
      query_params[:'accountId'] = account_id
      query_params[:'applyNo'] = apply_no

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])
      header_params[:'x-access-token'] = x_access_token

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransferRequestResultResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#transfer_request_result_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 振込依頼
    # <p>振込・振込予約を行うための依頼をします</p> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>詳細説明</h4> <div style='margin:10px;'>   <p style='padding-left:20px;'>最大99件まで登録可能</p>   <p style='padding-left:20px;'>1件の場合通常の振込扱いとなり、2件以上で一括振込扱いとなります</p> </div> 
    # @param body HTTPリクエストボディ
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [TransferRequestResponse]
    def transfer_request_using_post(body, x_access_token, opts = {})
      data, _status_code, _headers = transfer_request_using_post_with_http_info(body, x_access_token, opts)
      data
    end

    # 振込依頼
    # &lt;p&gt;振込・振込予約を行うための依頼をします&lt;/p&gt; &lt;h4 style&#x3D;&#39;margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;&#39;&gt;詳細説明&lt;/h4&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;最大99件まで登録可能&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;1件の場合通常の振込扱いとなり、2件以上で一括振込扱いとなります&lt;/p&gt; &lt;/div&gt; 
    # @param body HTTPリクエストボディ
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransferRequestResponse, Fixnum, Hash)>] TransferRequestResponse data, response status code and response headers
    def transfer_request_using_post_with_http_info(body, x_access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.transfer_request_using_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TransferApi.transfer_request_using_post"
      end
      # verify the required parameter 'x_access_token' is set
      if @api_client.config.client_side_validation && x_access_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_access_token' when calling TransferApi.transfer_request_using_post"
      end
      # resource path
      local_var_path = '/transfer/request'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])
      header_params[:'x-access-token'] = x_access_token

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransferRequestResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#transfer_request_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 振込状況照会
    # <p>仕向の振込状況および履歴を照会します</p> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>詳細説明</h4> <div style='margin:10px;'>   <p style='font-weight:bold; color:#616161;'>取得上限件数</p>   <p style='padding-left:20px;'>500件</p>   <p style='padding-left:20px;'>取得できる明細数が500に満たないときは取得できる明細のみを返却します</p>   <p style='padding-left:20px;'>取得できる明細が存在しない場合は「200：OK」とし明細を返却しません</p> </div> <div style='margin:10px;'>   <p style='font-weight:bold; color:#616161;'>ページング</p>   <p style='padding-left:20px;'>2ページ目以降を照会する際は、初回と同じリクエスト内容に、初回レスポンスの次明細キーを追加してリクエストしてください</p> </div> <div style='margin:10px;'>   <p style='font-weight:bold; color:#616161;'>ソート順</p>   <p style='padding-left:20px;'>振込照会対象期間区分の指定により下記となります  </p>  <p style='padding-left:20px;'>1：振込申請受付日　第1ソート：振込申請日昇順　第２ソート：振込申請番号昇順</p>  <p style='padding-left:20px;'>2：振込指定日　　　第1ソート：振込指定日昇順　第２ソート：振込申請番号昇順</p>   <p style='padding-left:20px;'>※振込照会対象期間区分の指定がない場合は、1：振込申請受付日と同じとします</p> </div> <div style='width:600px; margin:10px;'>   <p style='font-weight:bold; color:#616161;'>対象期間</p>   <div style='display:table; margin-left:20px; background-color:#29659b;'>     <div style='display:table-cell; width:160px; padding:9px; border:1px solid #fff; color:#fff;'>日本語名</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; text-align:center; font-size:120%; color:#fff;'>&#9312;</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; text-align:center; font-size:120%; color:#fff;'>&#9313;</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; text-align:center; font-size:120%; color:#fff;'>&#9314;</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; text-align:center; font-size:120%; color:#fff;'>&#9315;</div>   </div>   <div style='display:table; margin-left:20px;'>     <div style='display:table-cell; width:160px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>対象期間From</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;'>×</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;'>○</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;'>×</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;'>○</div>   </div>   <div style='display:table; margin-left:20px;'>     <div style='display:table-cell; width:160px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>対象期間To</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;'>×</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;'>×</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;'>○</div>     <div style='display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;'>○</div>   </div> </div> <div style='margin:10px;'>   <ul>     <li style='list-style-type:none;'>&#9312;の場合　当日分の明細を返却</li>     <li style='list-style-type:none;'>&#9313;の場合　対象期間From　～　当日までの明細を返却</li>     <li style='list-style-type:none;'>&#9314;の場合　取引初回　～　対象期間Toまでの明細を返却</li>     <li style='list-style-type:none;'>&#9315;の場合　対象期間From　～　対象期間Toまでの明細を返却</li>   </ul> </div> <div style='margin-bottom:40px;' /> <div style='margin:10px;'>   <p style='font-weight:bold; color:#616161;'>照会対象ステータス</p>   <p style='padding-left:20px;'>申請中以降のステータスで照会が可能となります</p>   <p style='padding-left:20px;'>依頼中、作成中の状態は照会対象外です</p> </div> <div style='margin:10px;'>   <p style='font-weight:bold; color:#616161;'>照会対象となる明細</p>   <p style='padding-left:20px;'>振込・振替・およびその予約の履歴と状況が照会対象となります（APIからの依頼結果のみではありません）</p>   <p style='padding-left:20px;'>定額自動振込契約によって自動登録された振込は照会対象となります</p>   <p style='padding-left:20px;'>定額自動振込契約の申請状態と状況は対象外となります</p> </div> 
    # @param account_id 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29 
    # @param query_key_class 照会対象キー区分 半角数字 照会対象のキー 1：振込申請照会対象指定、2：振込一括照会対象指定  minLength: 1 maxLength: 1 
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :apply_no 受付番号（振込申請番号） 半角数字 照会対象の番号を設定 照会対象キー区分が、1のときは必須 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）  minLength: 16 maxLength: 16 
    # @option opts [String] :date_from 対象期間From 半角文字 YYYY-MM-DD形式 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）  minLength: 10 maxLength: 10 
    # @option opts [String] :date_to 対象期間To 半角文字 YYYY-MM-DD形式 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10 
    # @option opts [String] :next_item_key 次明細キー 半角数字 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）              minLength: 1 maxLength: 24 
    # @option opts [Array<String>] :request_transfer_status 照会対象ステータス  半角数字  2:申請中、3:差戻、4:取下げ、5:期限切れ、8:承認取消/予約取消、  11:予約中、12:手続中、13:リトライ中、  20:手続済、22:資金返却、24:組戻手続中、25:組戻済、26:組戻不成立、  40:手続不成立  照会対象キー区分が、2のときは設定可  それ以外は設定しません（値が設定されている場合は、「400 Bad Request」を返却）  配列のため、複数設定した場合は対象のステータスをOR条件で検索します  省略した場合は全てを設定したものとみなします  minLength: 1 maxLength: 3 
    # @option opts [String] :request_transfer_class 振込照会対象取得区分 半角数字 1：ALL、2：振込申請のみ、3：振込受付情報のみ NULLを設定 （値が設定されている場合は、「400 Bad Request」を返却）  minLength: 1 maxLength: 1 
    # @option opts [String] :request_transfer_term 振込照会対象期間区分 半角数字 対象期間Fromと対象期間Toで指定する日付の区分 1：振込申請受付日　2：振込指定日 照会対象キー区分が2のときのみ入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 照会対象キー区分が、2のときに指定しない場合は1と扱います  minLength: 1 maxLength: 1 
    # @return [TransferStatusResponse]
    def transfer_status_using_get(account_id, query_key_class, x_access_token, opts = {})
      data, _status_code, _headers = transfer_status_using_get_with_http_info(account_id, query_key_class, x_access_token, opts)
      data
    end

    # 振込状況照会
    # &lt;p&gt;仕向の振込状況および履歴を照会します&lt;/p&gt; &lt;h4 style&#x3D;&#39;margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;&#39;&gt;詳細説明&lt;/h4&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;取得上限件数&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;500件&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;取得できる明細数が500に満たないときは取得できる明細のみを返却します&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;取得できる明細が存在しない場合は「200：OK」とし明細を返却しません&lt;/p&gt; &lt;/div&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;ページング&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;2ページ目以降を照会する際は、初回と同じリクエスト内容に、初回レスポンスの次明細キーを追加してリクエストしてください&lt;/p&gt; &lt;/div&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;ソート順&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;振込照会対象期間区分の指定により下記となります  &lt;/p&gt;  &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;1：振込申請受付日　第1ソート：振込申請日昇順　第２ソート：振込申請番号昇順&lt;/p&gt;  &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;2：振込指定日　　　第1ソート：振込指定日昇順　第２ソート：振込申請番号昇順&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;※振込照会対象期間区分の指定がない場合は、1：振込申請受付日と同じとします&lt;/p&gt; &lt;/div&gt; &lt;div style&#x3D;&#39;width:600px; margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;対象期間&lt;/p&gt;   &lt;div style&#x3D;&#39;display:table; margin-left:20px; background-color:#29659b;&#39;&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:160px; padding:9px; border:1px solid #fff; color:#fff;&#39;&gt;日本語名&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; text-align:center; font-size:120%; color:#fff;&#39;&gt;&amp;#9312;&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; text-align:center; font-size:120%; color:#fff;&#39;&gt;&amp;#9313;&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; text-align:center; font-size:120%; color:#fff;&#39;&gt;&amp;#9314;&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; text-align:center; font-size:120%; color:#fff;&#39;&gt;&amp;#9315;&lt;/div&gt;   &lt;/div&gt;   &lt;div style&#x3D;&#39;display:table; margin-left:20px;&#39;&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:160px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;&#39;&gt;対象期間From&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;&#39;&gt;×&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;&#39;&gt;○&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;&#39;&gt;×&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;&#39;&gt;○&lt;/div&gt;   &lt;/div&gt;   &lt;div style&#x3D;&#39;display:table; margin-left:20px;&#39;&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:160px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;&#39;&gt;対象期間To&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;&#39;&gt;×&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;&#39;&gt;×&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;&#39;&gt;○&lt;/div&gt;     &lt;div style&#x3D;&#39;display:table-cell; width:80px; padding:9px; border:1px solid #fff; background-color:#f8f8f8; font-size:120%; text-align:center;&#39;&gt;○&lt;/div&gt;   &lt;/div&gt; &lt;/div&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;ul&gt;     &lt;li style&#x3D;&#39;list-style-type:none;&#39;&gt;&amp;#9312;の場合　当日分の明細を返却&lt;/li&gt;     &lt;li style&#x3D;&#39;list-style-type:none;&#39;&gt;&amp;#9313;の場合　対象期間From　～　当日までの明細を返却&lt;/li&gt;     &lt;li style&#x3D;&#39;list-style-type:none;&#39;&gt;&amp;#9314;の場合　取引初回　～　対象期間Toまでの明細を返却&lt;/li&gt;     &lt;li style&#x3D;&#39;list-style-type:none;&#39;&gt;&amp;#9315;の場合　対象期間From　～　対象期間Toまでの明細を返却&lt;/li&gt;   &lt;/ul&gt; &lt;/div&gt; &lt;div style&#x3D;&#39;margin-bottom:40px;&#39; /&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;照会対象ステータス&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;申請中以降のステータスで照会が可能となります&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;依頼中、作成中の状態は照会対象外です&lt;/p&gt; &lt;/div&gt; &lt;div style&#x3D;&#39;margin:10px;&#39;&gt;   &lt;p style&#x3D;&#39;font-weight:bold; color:#616161;&#39;&gt;照会対象となる明細&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;振込・振替・およびその予約の履歴と状況が照会対象となります（APIからの依頼結果のみではありません）&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;定額自動振込契約によって自動登録された振込は照会対象となります&lt;/p&gt;   &lt;p style&#x3D;&#39;padding-left:20px;&#39;&gt;定額自動振込契約の申請状態と状況は対象外となります&lt;/p&gt; &lt;/div&gt; 
    # @param account_id 口座ID 半角数字 口座を識別するID  minLength: 12 maxLength: 29 
    # @param query_key_class 照会対象キー区分 半角数字 照会対象のキー 1：振込申請照会対象指定、2：振込一括照会対象指定  minLength: 1 maxLength: 1 
    # @param x_access_token アクセストークン  minLength: 1 maxLength: 128 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :apply_no 受付番号（振込申請番号） 半角数字 照会対象の番号を設定 照会対象キー区分が、1のときは必須 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）  minLength: 16 maxLength: 16 
    # @option opts [String] :date_from 対象期間From 半角文字 YYYY-MM-DD形式 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）  minLength: 10 maxLength: 10 
    # @option opts [String] :date_to 対象期間To 半角文字 YYYY-MM-DD形式 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 対象期間Fromと対象期間Toを指定する場合は、対象期間From≦対象期間Toとし、それ以外は「400 Bad Request」を返却  minLength: 10 maxLength: 10 
    # @option opts [String] :next_item_key 次明細キー 半角数字 照会対象キー区分が、2のときは入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却）              minLength: 1 maxLength: 24 
    # @option opts [Array<String>] :request_transfer_status 照会対象ステータス  半角数字  2:申請中、3:差戻、4:取下げ、5:期限切れ、8:承認取消/予約取消、  11:予約中、12:手続中、13:リトライ中、  20:手続済、22:資金返却、24:組戻手続中、25:組戻済、26:組戻不成立、  40:手続不成立  照会対象キー区分が、2のときは設定可  それ以外は設定しません（値が設定されている場合は、「400 Bad Request」を返却）  配列のため、複数設定した場合は対象のステータスをOR条件で検索します  省略した場合は全てを設定したものとみなします  minLength: 1 maxLength: 3 
    # @option opts [String] :request_transfer_class 振込照会対象取得区分 半角数字 1：ALL、2：振込申請のみ、3：振込受付情報のみ NULLを設定 （値が設定されている場合は、「400 Bad Request」を返却）  minLength: 1 maxLength: 1 
    # @option opts [String] :request_transfer_term 振込照会対象期間区分 半角数字 対象期間Fromと対象期間Toで指定する日付の区分 1：振込申請受付日　2：振込指定日 照会対象キー区分が2のときのみ入力可 それ以外はNULLを設定（値が設定されている場合は、「400 Bad Request」を返却） 照会対象キー区分が、2のときに指定しない場合は1と扱います  minLength: 1 maxLength: 1 
    # @return [Array<(TransferStatusResponse, Fixnum, Hash)>] TransferStatusResponse data, response status code and response headers
    def transfer_status_using_get_with_http_info(account_id, query_key_class, x_access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.transfer_status_using_get ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TransferApi.transfer_status_using_get"
      end
      # verify the required parameter 'query_key_class' is set
      if @api_client.config.client_side_validation && query_key_class.nil?
        fail ArgumentError, "Missing the required parameter 'query_key_class' when calling TransferApi.transfer_status_using_get"
      end
      # verify the required parameter 'x_access_token' is set
      if @api_client.config.client_side_validation && x_access_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_access_token' when calling TransferApi.transfer_status_using_get"
      end
      # resource path
      local_var_path = '/transfer/status'

      # query parameters
      query_params = {}
      query_params[:'accountId'] = account_id
      query_params[:'queryKeyClass'] = query_key_class
      query_params[:'applyNo'] = opts[:'apply_no'] if !opts[:'apply_no'].nil?
      query_params[:'dateFrom'] = opts[:'date_from'] if !opts[:'date_from'].nil?
      query_params[:'dateTo'] = opts[:'date_to'] if !opts[:'date_to'].nil?
      query_params[:'nextItemKey'] = opts[:'next_item_key'] if !opts[:'next_item_key'].nil?
      query_params[:'requestTransferStatus'] = @api_client.build_collection_param(opts[:'request_transfer_status'], :multi) if !opts[:'request_transfer_status'].nil?
      query_params[:'requestTransferClass'] = opts[:'request_transfer_class'] if !opts[:'request_transfer_class'].nil?
      query_params[:'requestTransferTerm'] = opts[:'request_transfer_term'] if !opts[:'request_transfer_term'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])
      header_params[:'x-access-token'] = x_access_token

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransferStatusResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#transfer_status_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
