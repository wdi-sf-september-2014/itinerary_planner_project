class CreateItinerariesTravelersWaypoints < ActiveRecord::Migration
  def self.up
    create_table :itineraries_travelers_waypoints, :id => false do |t|
    	t.integer :itinerary_id
    	t.integer :traveler_id
    	t.integer :waypoint_id
    end
    add_index :itineraries_travelers_waypoints, :itinerary_id
    add_index :itineraries_travelers_waypoints, :traveler_id
    add_index :itineraries_travelers_waypoints, :waypoint_id
  end
  def self.down
  	drop_table :itineraries_travelers_waypoints
  end
end
