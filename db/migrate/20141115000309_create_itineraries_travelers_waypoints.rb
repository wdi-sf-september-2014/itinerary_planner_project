class CreateItinerariesTravelersWaypoints < ActiveRecord::Migration
  def self.up
    create_table :itineraries_travelers_waypoints, :id => false do |t|
    	t.references :intinerary
    	t.references :traveler
    	t.references :waypoint
    end
  end
  def self.down
  	drop_table :itineraries_travelers_waypoints
  end
end
