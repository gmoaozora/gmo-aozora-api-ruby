require_relative 'authorization_api'
require_relative 'token_api'
require_relative 'state_factory'
require_relative 'nonce_factory'
require_relative 'authorization_api'
require_relative 'token_api'
module SwaggerClient
  class OpenId
    def initialize(client_id, client_secret, redirect_uri, scope, auth_type, hashKey, nonce_factory)
      @client_id = client_id
      @client_secret = client_secret
      @redirect_uri = redirect_uri
      @scope = scope
      @state_factory = StateFactory.new(hashKey)
      @auth_type = auth_type
      @authorization_api = AuthorizationApi.new
      @token_api = TokenApi.new
      if nonce_factory = nil
        @nonce_factory = nonce_factory
      else
        @nonce_factory = DefaultNonceFactory.new(client_id, client_secret)
      end
    end

    def authorization(session_id)
      @authorization_api.authorization(
          @client_id,
          @redirect_uri,
          "code",
          @scope,
          @state_factory.generate_state(session_id),
          @nonce_factory.generate_nonce)
    end

    def get_token(state, code, session_id)
      @state_factory.validateState(state, session_id)
      request = TokenRequest.new
      request.client_id = @client_id
      request.client_secret = @client_secret
      request.code = code
      request.grant_type = "authorization_code"
      request.redirect_uri = @redirect_uri
      response = @token_api.token_using_post(request, @client_id)
      @nonce_factory.validate_and_delete_nonce(response.id_token)
      return response
    end

    def refresh_token(refresh_token)
      @state_factory.validateState(state, session_id)
      request = TokenRequest.new
      request.client_id = client_id
      request.client_secret = client_secret
      request.grant_type = "refresh_token"
      request.refresh_token = refresh_token
      request.redirect_uri = @redirect_uri
      return @token_api.token_using_post(request, @client_id)
    end
  end
end