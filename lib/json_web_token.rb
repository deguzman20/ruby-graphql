class JsonWebToken
  class << self
    def encode(payload, exp = 2.minutes.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      HashWithIndifferentAccess.new body
    rescue JWT::ExpiredSignature, JWT::VerificationError => e
      pp e
      "expired_token"
      # raise ExceptionHandler::ExpiredSignature, e.message
    rescue JWT::DecodeError, JWT::VerificationError => e
      pp e
      "decode_error"
      # raise ExceptionHandler::DecodeError, e.message
    end
  end
end
