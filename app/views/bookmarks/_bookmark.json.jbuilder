json.extract! bookmark, :id, :user_id, :venue_id, :dish_id, :created_at,
              :updated_at
json.url bookmark_url(bookmark, format: :json)
