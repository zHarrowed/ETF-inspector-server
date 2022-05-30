class Etf < ApplicationRecord
  belongs_to :issuer
  has_many :etf_holdings, dependent: :destroy
  has_many :assets, through: :etf_holdings
end