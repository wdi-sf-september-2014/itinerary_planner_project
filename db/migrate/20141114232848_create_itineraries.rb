class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :origin
      t.string :destination
      t.string :name
      t.date :departure_date
      t.date :return_date

      t.timestamps
    end
  end
end
