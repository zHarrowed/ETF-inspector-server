class CreateAssetType < ActiveRecord::Migration[7.0]
  def change
    create_table :asset_types do |t|
      t.string :name, null: false, unique: true, index: true

      t.timestamps
    end
  end
end
