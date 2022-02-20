class AddMapAddressLongitudeToVenue < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :map_address_longitude, :float
  end
end
