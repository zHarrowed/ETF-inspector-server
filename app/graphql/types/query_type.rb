module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :etf_holdings, resolver: Queries::EtfHoldingsResolver
  end
end
