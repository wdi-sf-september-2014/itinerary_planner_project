class AddDepartOnAndReturnOnDatesToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :depart_on, :timestamp
    add_column :itineraries, :return_on, :timestamp
  end
end
