class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :ville
      t.integer :code_postal
      t.string :categorie
      t.string :description

      t.timestamps
    end
  end
end
