json.extract! venue, :id, :name, :map_address, :neighborhood, :city, :created_at, :updated_at
json.url venue_url(venue, format: :json)
