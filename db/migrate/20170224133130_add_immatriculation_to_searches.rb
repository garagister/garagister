class AddImmatriculationToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :immatriculation, :string
  end
end
