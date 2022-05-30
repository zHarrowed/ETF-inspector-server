class CreateEtfHolding < ActiveRecord::Migration[7.0]
  def change
    create_table :etf_holdings do |t|
      t.references :etf, null: false, index: true
      t.references :asset, null: false, index: true
      t.float :weight, null: false

      t.timestamps
    end
    add_index :etf_holdings, [:etf_id, :asset_id], unique: true
  end
end
