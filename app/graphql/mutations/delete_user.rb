module Mutations
  # mutation for deleting user
  class DeleteUser < BaseMutation
    description "Delete User"
    argument :id, Int, required: true

    type Types::UserType

    def resolve(id: nil)
      user = User.find(id)
      user.delete
    end
  end
end
