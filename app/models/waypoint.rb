class Waypoint < ActiveRecord::Base
	has_many :itinerary_traveler_waypoints
	has_many :travelers, through: :itinerary_traveler_waypoints
end
