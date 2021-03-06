class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :map_address, :string
  attribute :neighborhood, :string
  attribute :city, :string

  # Direct associations

  has_many   :bookmarks

  has_many   :dishes

  # Indirect associations
end
