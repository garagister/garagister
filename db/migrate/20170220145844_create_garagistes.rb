class CreateGaragistes < ActiveRecord::Migration[5.0]
  def change
    create_table :garagistes do |t|
      t.string :name
      t.stringadresse :ville
      t.integer :code_postal
      t.string :categorie
      t.decimal :taux_mo
      t.decimal :taux_piece

      t.timestamps
    end
  end
end
