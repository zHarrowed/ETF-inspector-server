class CreateEtf < ActiveRecord::Migration[7.0]
  def change
    create_table :etfs do |t|
      t.references :issuer, null: false, index: true
      t.string :name, null: false, unique: true, index: true
      t.string :slug, null: false, unique: true, index: true

      t.timestamps
    end
  end
end
