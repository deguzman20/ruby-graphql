module Mutations
  # mutation for creating new vote
  class CreateVote < BaseMutation
    description "Create Vote"
    argument :link_id, ID, required: false
    field :response, String, null: true
    field :status_code, Integer, null: false

    type Types::VoteType

    def resolve(link_id: nil)
      if context[:current_user].nil?
        { response: "Unauthorized", status_code: 401 }
      else
        Vote.create!(
          link: Link.find(link_id),
          user: context[:current_user]
        )
        { response: "Vote Created", status_code: 200 }
      end
    rescue ActiveRecord::RecordInvalid => e
      error = e.record.full_messages
      GraphQL::ExecutionError.new("Invalid input: #{error}")
    end
  end
end
