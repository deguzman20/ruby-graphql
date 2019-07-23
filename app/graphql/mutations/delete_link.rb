module Mutations
  # mutation for deleting link
  class DeleteLink < BaseMutation
    description "Delete Link"
    argument :id, Int, required: true

    type Types::LinkType
    def resolve(id: nil)
      link = Link.find(id)
      link.delete
    end
  end
end
