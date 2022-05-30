class EtfHolding < ApplicationRecord
  belongs_to :etf
  belongs_to :asset
end