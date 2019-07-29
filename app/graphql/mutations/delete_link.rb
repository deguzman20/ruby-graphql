module Mutations
  # mutation for deleting link
  class DeleteLink < BaseMutation
    description "Delete Link"
    argument :id, Int, required: true
    field :response, String, null: true
    field :status_code, Integer, null: false

    type Types::LinkType
    def resolve(id: nil)
      if context[:current_user].nil?
        { response: "Unauthorized", status_code: 401 }
      else
        link = Link.find(id)
        link.delete
        { response: "Link Deleted", status_code: 200 }
      end
    end
  end
end
