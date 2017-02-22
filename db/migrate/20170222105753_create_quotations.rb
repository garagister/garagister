class CreateQuotations < ActiveRecord::Migration[5.0]
  def change
    create_table :quotations do |t|
      t.integer :price
      t.references :garagiste, foreign_key: true
      t.references :search, foreign_key: true

      t.timestamps
    end
  end
end
