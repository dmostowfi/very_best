require "open-uri"
class Venue < ApplicationRecord
  before_validation :geocode_map_address

  def geocode_map_address
    if map_address.present?
      url = "https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GMAP_API_KEY']}&address=#{URI.encode(map_address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.map_address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.map_address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.map_address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  # Direct associations

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :dishes,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
