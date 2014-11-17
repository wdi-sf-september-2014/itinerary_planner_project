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

ActiveRecord::Schema.define(version: 20141117084315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "itineraries", force: true do |t|
    t.string   "name"
    t.string   "origin"
    t.string   "destination"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "depart_on"
    t.datetime "return_on"
  end

  create_table "travelers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travelers_waypoints", force: true do |t|
    t.integer "traveler_id"
    t.integer "waypoint_id"
  end

  create_table "waypoints", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "itinerary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "occurs_on"
  end

  add_index "waypoints", ["itinerary_id"], name: "index_waypoints_on_itinerary_id", using: :btree

end
