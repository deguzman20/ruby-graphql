module Mutations
  # mutation for sign in user
  class SignInUser < BaseMutation
    description "Sign-in Authentication"
    argument :email, Types::AuthProviderEmailInput, required: false
    field :token, String, null: true
    field :email, String, null: true
    field :password, String, null: true

    def resolve(email: nil)
      token = AuthenticationService.new(email[:email], email[:password]).call
      { token: token, email: email[:email], password: email[:password] }
    end
  end
end
