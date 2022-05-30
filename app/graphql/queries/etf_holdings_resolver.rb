module Queries
  class EtfHoldingsResolver < Queries::BaseQuery

    type Objects::EtfHoldingType.connection_type, null: false
    argument :etf_slug, String, required: true
    argument :search_text, String, required: false

    def resolve(etf_slug:, search_text:)
      cursor = EtfHolding.where(etf: Etf.where(slug: etf_slug))
      if search_text.present?
        cursor = cursor.where(id: cursor.joins(:asset).where("assets.name ILIKE ?", "%#{search_text}%"))
      end
      cursor.order("weight desc")
    end
  end
end