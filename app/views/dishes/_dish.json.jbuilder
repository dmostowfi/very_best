json.extract! dish, :id, :name, :venue_id, :cuisine, :created_at, :updated_at
json.url dish_url(dish, format: :json)
