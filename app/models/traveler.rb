class Traveler < ActiveRecord::Base
	has_many :itinerary_traveler_waypoints
	has_many :waypoints, through: :itinerary_traveler_waypoints
end
