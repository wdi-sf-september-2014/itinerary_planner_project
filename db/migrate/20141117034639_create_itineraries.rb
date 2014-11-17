class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
