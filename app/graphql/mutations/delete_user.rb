module Mutations
  # mutation for deleting user
  class DeleteUser < BaseMutation
    description "Delete User"
    argument :id, Int, required: true
    field :response, String, null: true
    field :status_code, Integer, null: false

    type Types::UserType

    def resolve(id: nil)
      if context[:current_user].nil?
        { response: "Unauthorized", status_code: 401 }
      else
        user = User.find(id)
        user.delete
        { response: "User Deleted", status_code: 200 }
      end
    end
  end
end
