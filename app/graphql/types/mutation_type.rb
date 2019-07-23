module Types
  # field of available mutation
  class MutationType < Types::BaseObject
    description "Mutation"
    field :sign_in, mutation: Mutations::SignInUser
    field :create_link, mutation: Mutations::CreateLink
    field :delete_link, mutation: Mutations::DeleteLink
    field :create_user, mutation: Mutations::CreateUser
    field :delete_user, mutation: Mutations::DeleteUser
    field :create_vote, mutation: Mutations::CreateVote
  end
end
