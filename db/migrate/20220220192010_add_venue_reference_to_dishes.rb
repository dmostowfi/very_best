class AddVenueReferenceToDishes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :dishes, :venues
    add_index :dishes, :venue_id
    change_column_null :dishes, :venue_id, false
  end
end
