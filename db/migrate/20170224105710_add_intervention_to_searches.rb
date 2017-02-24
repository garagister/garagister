class AddInterventionToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :intervention, :string
  end
end
