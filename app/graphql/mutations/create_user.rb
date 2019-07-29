module Mutations
  # mutation for creating new user
  class CreateUser < BaseMutation
    description "Create User"

    # base input object for email and password
    class AuthProviderSignupData < Types::BaseInputObject
      argument :email, Types::AuthProviderEmailInput, required: false
    end
    argument :auth_provider, AuthProviderSignupData, required: false
    argument :user_type, Types::UserEnum, required: false
    field :response, String, null: true
    field :status_code, Integer, null: false
    # type Types::UserType
    def resolve(auth_provider: nil, user_type: nil)
      if context[:current_user].nil?
        { response: "Unauthorized", status_code: 401 }
      else
        User.create!(
          email: auth_provider&.[](:email)&.[](:email),
          password: auth_provider&.[](:email)&.[](:password)
        )
        { response: "User Created", status_code: 200 }
      end
    end
  end
end
