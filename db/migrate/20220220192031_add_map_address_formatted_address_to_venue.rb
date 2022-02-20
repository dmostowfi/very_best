class AddMapAddressFormattedAddressToVenue < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :map_address_formatted_address, :string
  end
end
