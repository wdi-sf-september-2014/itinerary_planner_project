class Waypoint < ActiveRecord::Base
  belongs_to :itinerary
  validates_presence_of :name, :location
end
