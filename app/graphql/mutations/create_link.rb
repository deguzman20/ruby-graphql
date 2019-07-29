module Mutations
  # mutation for creating link
  class CreateLink < BaseMutation
    description "Create Link"
    argument :url, String, required: true
    argument :description, String, required: true

    field :response, String, null: true
    field :status_code, Integer, null: false

    def resolve(url: nil, description: nil)
      if context[:current_user].nil?
        { response: "Unauthorized", status_code: 401 }
      else
        Link.create!(
          description: description,
          url: url
        )
        { response: 'sasas', status_code: 200 }
      end
    end
  end
end
