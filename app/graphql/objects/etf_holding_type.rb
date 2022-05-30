module Objects
  class EtfHoldingType < Types::BaseObject
    field :id, ID, null: false
    field :weight, Float, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :etf, Objects::EtfType, null: false
    field :asset, Objects::AssetType, null: false
  end
end