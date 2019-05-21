
# require 'authorization_api'
# require 'token_api'
require_relative 'state_factory'
require_relative 'authorization_api'
require_relative 'token_api'
require "base64"
module SwaggerClient
  class Oauth

    def initialize(client_id, client_secret, redirect_uri, scope, auth_type, hashKey)
      @client_id = client_id
      @client_secret = client_secret
      @redirect_uri = redirect_uri
      @scope = scope
      @state_factory = StateFactory.new(hashKey)
      @auth_type = auth_type
      @authorization_api = AuthorizationApi.new
      @token_api = TokenApi.new
    end

    def authorization(session_id)
      state = @state_factory.generate_state(session_id)
      @authorization_api.authorization(@client_id, @redirect_uri, "code", @scope, state, {})
    end

    def get_token(state, code, session_id)
      @state_factory.validateState(state, session_id)
      request = TokenRequest.new
      request.client_id = @client_id
      request.client_secret = @client_secret
      request.code = code
      request.grant_type = "authorization_code"
      request.redirect_uri = @redirect_uri
      authorization = nil
      if @auth_type.eql?"CLIENT_SECRET_BASIC"
        authorization = Base64.encode64(@client_id + ':' + @client_secret)
      end
      response = @token_api.token_using_post(request, {"authorization" => authorization})
      @nonce_factory.validate_id_token(response.id_token)
      response
    end

    def refresh_token(refresh_token)
      request = TokenRequest.new
      request.client_id = @client_id
      request.client_secret = @client_secret
      request.grant_type = "refresh_token"
      request.refresh_token = refresh_token
      request.redirect_uri = @redirect_uri
      return @token_api.token_using_post(request, @client_id)
    end
  end
end