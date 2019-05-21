
require 'digest/sha2'
module SwaggerClient
  class StateFactory

    def initialize(hash_key)
      @hash_key = hash_key
    end

    def generate_state(session_id)
      return Digest::SHA256.digest(@hash_key + session_id)
    end

    def validateState(session_id, state)
      return state.equal?Digest::SHA256.digest(@hash_key + session_id)
    end
  end
end