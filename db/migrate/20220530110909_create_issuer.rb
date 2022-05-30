class CreateIssuer < ActiveRecord::Migration[7.0]
  def change
    create_table :issuers do |t|
      t.string :name, null: false, unique: true, index: true

      t.timestamps
    end
  end
end
