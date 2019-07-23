# service object for authentication
class AuthenticationService
  attr_accessor :email, :password
  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    authenticate_user
  end

  private

    def authenticate_user
      user = User.find_for_authentication(email: email)
      return nil unless user

      is_valid_for_auth = user.valid_for_authentication? do
        user.valid_password?(password)
      end

      if is_valid_for_auth
        get_user = User.find_by_email(email)
        if get_user.token.nil?
          token = JsonWebToken.encode(user_id: user.id)
          get_user.token = token
          get_user.save!
          JsonWebToken.decode(token)
        else
          token = get_user.token
          case JsonWebToken.decode(token)
          when "expired_token"
            token = JsonWebToken.encode(user_id: user.id)
            get_user.token = token
            get_user.save!
            JsonWebToken.decode(token)
          when "decode_error"
            return "decode_error"
          else
            return "not expired"
          end
        end
      end
    end
end
