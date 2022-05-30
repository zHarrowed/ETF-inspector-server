class CreateAsset < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :name, null: false, unique: true, index: true
      t.string :ticker, null: false, unique: true, index: true
      t.references :sector, null: false, index: true
      t.references :asset_type, null: false, index: true
      t.references :country, null: false, index: true

      t.timestamps
    end
  end
end
