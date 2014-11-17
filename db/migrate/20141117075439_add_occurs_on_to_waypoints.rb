class AddOccursOnToWaypoints < ActiveRecord::Migration
  def change
    add_column :waypoints, :occurs_on, :timestamp
  end
end
