# root object for graphql
class GraphqlTurorialSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
