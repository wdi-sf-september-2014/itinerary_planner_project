class Traveler < ActiveRecord::Base
	has_many :itineraries_travelers_waypoints
	has_many :waypoints, through: :itinerary_traveler_waypoint
end
