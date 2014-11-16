class Waypoint < ActiveRecord::Base
	has_many :itineraries_travelers_waypoints
	has_many :travelers, through: :itinerary_traveler_waypoint
end
