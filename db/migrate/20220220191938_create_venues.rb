class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :map_address
      t.string :neighborhood
      t.string :city

      t.timestamps
    end
  end
end
