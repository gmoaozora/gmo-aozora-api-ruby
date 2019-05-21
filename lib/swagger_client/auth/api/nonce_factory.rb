require 'jwt'
require 'securerandom'

module SwaggerClient
  class NonceFactory
    def initialize(client_id, client_secret)
      @hmac_secret = client_secret
      @client_id = client_id
    end

    def generate_nonce
      nonce = SecureRandom.uuid
      save_nonce(nonce)
      return nonce
    end

    def validate_id_token(id_token)
      payload, header = JWT.decode id_token, @hmac_secret, true,
                           {iss: "https://ita-api.gmo-aozora.com",
                            verify_iss: true,
                            aud: @client_id,
                            verify_aud: true,
                            verify_iat: true,
                            algorithm: 'HS256' }
      validate_and_delete_nonce(payload["nonce"])
    end

    def save_nonce(nonce)
      raise ApiError.new("ナンスを保存するメソッドが実装してない")
    end

    def validate_and_delete_nonce(nonce)
      raise ApiError.new("ナンスをチェック・削除するメソッドが実装してない")
    end
  end
end
