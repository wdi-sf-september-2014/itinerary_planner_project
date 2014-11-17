class ItineraryTravelerWaypoint < ActiveRecord::Base
	belongs_to :itinerary
	belongs_to :traveler
	belongs_to :waypoint
end
