class Itinerary < ActiveRecord::Base
  validates_presence_of :name, :origin, :destination
end
