require 'set'
require_relative 'nonce_factory'
class DefaultNonceFactory < NonceFactory

  def initialize(client_id, client_secret)
    super(client_id, client_secret)
    @set = Set.new

  end

  def save_nonce(nonce)
    @set.add(nonce)
  end

  def validate_and_delete_nonce(nonce)
    if @set.include(nonce)
      @set.delete(nonce)
    else
      raise ApiError.new("ナンスチェック失敗しました")
    end

    end
end