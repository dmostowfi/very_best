class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :venue_id
      t.string :cuisine

      t.timestamps
    end
  end
end
