module Objects
  class AssetType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :ticker, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :etfs, [Objects::EtfType], null: true
    field :sector, Objects::SectorType, null: false
    field :asset_type, Objects::AssetTypeType, null: false
    field :country, Objects::CountryType, null: false
  end
end