module Types
  # query root object
  class QueryType < Types::BaseObject
    # field :all_links, function: Resolvers::LinksSearch
    field :links, LinkType.collection_type, null: true do
      description "List of Links"
      argument :page, Integer, required: false
      argument :limit, Integer, required: false
    end

    field :all_users, [UserType], null: false do
      description "List of Users"
    end

    field :all_votes, [VoteType], null: false do
      description "List of Votes"
    end

    def links(page: nil, limit: nil)
      Link.page(page).per(limit)
    end

    def all_users
      User.all
    end

    def all_votes
      Vote.all
    end
  end
end
