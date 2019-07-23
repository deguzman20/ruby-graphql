module Types
  # query object for user
  class UserType < BaseObject
    field :id, ID, null: false
    field :encrypted_password, String, null: false
    field :email, String, null: false
  end
end
