# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141115234036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "itineraries", force: true do |t|
    t.string   "origin"
    t.string   "destination"
    t.string   "name"
    t.date     "departure_date"
    t.date     "return_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itinerary_traveler_waypoints", id: false, force: true do |t|
    t.integer  "intinerary_id"
    t.integer  "traveler_id"
    t.integer  "waypoint_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travelers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waypoints", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.date     "visit_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
