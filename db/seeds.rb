blackrock = Issuer.create(name: "iShares by Blackrock")
rbot = Etf.create(name: "iShares Automation & Robotics UCITS ETF", slug: "rbot", issuer: blackrock)
csv_filename = Rails.root.join("db/etf_holding", "RBOT_holdings.csv")

require 'csv'

CSV.readlines(csv_filename, col_sep: ",", headers: true).each do |line|
  headers = [
    :ticker, :name, :sector, :type, :market_value, :weight, :notional_value, :shares, :price, :location, :exchange, :currency
  ]
  data = headers.zip(line.fields.map{_1.try(:strip)}).to_h

  next if data[:weight].blank?

  asset = Asset.find_or_initialize_by(ticker: data[:ticker], name: data[:name])
  asset.sector = Sector.find_or_create_by!(name: data[:sector])
  asset.asset_type = AssetType.find_or_create_by!(name: data[:type])
  asset.country = Country.find_or_create_by!(name: data[:location])
  asset.save!

  holding = EtfHolding.find_or_initialize_by(etf: rbot, asset: asset)
  holding.weight = data[:weight].to_f
  holding.save!
end
