class CreateTravelersWaypoints < ActiveRecord::Migration
  def change
    create_table :travelers_waypoints do |t|
      t.references :traveler
      t.references :waypoint
    end
  end
end
