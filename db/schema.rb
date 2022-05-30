# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_30_121846) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asset_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_asset_types_on_name"
  end

  create_table "etf_holding", force: :cascade do |t|
    t.string "name", null: false
    t.string "ticker", null: false
    t.bigint "sector_id", null: false
    t.bigint "asset_type_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_type_id"], name: "index_assets_on_asset_type_id"
    t.index ["country_id"], name: "index_assets_on_country_id"
    t.index ["name"], name: "index_assets_on_name"
    t.index ["sector_id"], name: "index_assets_on_sector_id"
    t.index ["ticker"], name: "index_assets_on_ticker"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_countries_on_name"
  end

  create_table "etf_holding", force: :cascade do |t|
    t.bigint "etf_id", null: false
    t.bigint "asset_id", null: false
    t.float "weight", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_etf_holdings_on_asset_id"
    t.index ["etf_id", "asset_id"], name: "index_etf_holdings_on_etf_id_and_asset_id", unique: true
    t.index ["etf_id"], name: "index_etf_holdings_on_etf_id"
  end

  create_table "etfs", force: :cascade do |t|
    t.bigint "issuer_id", null: false
    t.string "name", null: false
    t.string "slug", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["issuer_id"], name: "index_etfs_on_issuer_id"
    t.index ["name"], name: "index_etfs_on_name"
    t.index ["slug"], name: "index_etfs_on_slug"
  end

  create_table "issuers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_issuers_on_name"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_sectors_on_name"
  end

end
