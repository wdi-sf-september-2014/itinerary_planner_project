class Waypoint < ActiveRecord::Base
	belongs_to :itinerary
	has_many :travelers
end
