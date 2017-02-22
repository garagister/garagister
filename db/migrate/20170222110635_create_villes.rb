class CreateVilles < ActiveRecord::Migration[5.0]
  def change
    create_table :villes do |t|
      t.string :name
      t.integer :code_postal

      t.timestamps
    end
  end
end
