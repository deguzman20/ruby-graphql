module Types
  #  Object for email and password input
  class AuthProviderEmailInput < BaseInputObject
    graphql_name "AUTH_PROVIDER_EMAIL"
    argument :email, String, required: true
    argument :password, String, required: true
  end
end
