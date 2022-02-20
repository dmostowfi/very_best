class AddMapAddressLatitudeToVenue < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :map_address_latitude, :float
  end
end
