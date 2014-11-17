class CreateWaypoints < ActiveRecord::Migration
  def change
    create_table :waypoints do |t|
      t.string :name
      t.string :location
      t.references :itinerary, index: true

      t.timestamps
    end
  end
end
