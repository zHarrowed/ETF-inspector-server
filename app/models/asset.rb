class Asset < ApplicationRecord
  belongs_to :sector
  belongs_to :asset_type
  belongs_to :country
  has_many :etf_holdings, dependent: :destroy
  has_many :etfs, through: :etf_holdings
end