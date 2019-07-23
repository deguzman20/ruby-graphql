module Mutations
  # mutation for creating new user
  class CreateUser < BaseMutation
    description "Create User"
     # base input object for email and password
    class AuthProviderSignupData < Types::BaseInputObject
      argument :email, Types::AuthProviderEmailInput, required: false
    end
  
    # argument :name, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: false
  
    type Types::UserType

    def resolve(auth_provider: nil)
      #sdsd
      User.create!(
        email: auth_provider&.[](:email)&.[](:email),
        password: auth_provider&.[](:email)&.[](:password)
      )
    end
  end
end
