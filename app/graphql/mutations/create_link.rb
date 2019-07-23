module Mutations
  # mutation for creating link
  class CreateLink < BaseMutation
    description "Create Link"
    # arguments passed to the `resolved` method
    argument :url, String, required: true
    argument :description, String, required: true

    # return type from the mutation
    type Types::LinkType

    def resolve(url: nil, description: nil)
      Link.create!(
        description: description,
        url: url
      )
    end
  end
end
