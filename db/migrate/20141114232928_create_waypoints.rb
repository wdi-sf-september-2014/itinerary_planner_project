class CreateWaypoints < ActiveRecord::Migration
  def change
    create_table :waypoints do |t|
      t.string :name
      t.string :location
      t.date :visit_date

      t.timestamps
    end
  end
end
