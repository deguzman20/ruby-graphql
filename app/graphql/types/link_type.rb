module Types
  #  link type base object
  class LinkType < BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
    # field :posted_by, UserType, null: false, method: :user
    field :votes, [Types::VoteType], null: false
  end
end
