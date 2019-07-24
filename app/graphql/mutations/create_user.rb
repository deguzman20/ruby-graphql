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
    argument :user_type, Types::UserEnum, required: false
    
    type Types::UserType
   
    def resolve(auth_provider: nil, user_type: nil)
      User.create!(
        email: auth_provider&.[](:email)&.[](:email),
        password: auth_provider&.[](:email)&.[](:password)
      )
    end
  end
end
