class CreateItineraryTravelerWaypoints < ActiveRecord::Migration
  def change
    create_table :itinerary_traveler_waypoints, :id => false do |t|
    	t.references :intinerary
    	t.references :traveler
    	t.references :waypoint

      t.timestamps
    end
  end
end
