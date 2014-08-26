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

ActiveRecord::Schema.define(version: 20140121042310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string  "name",                           null: false
    t.string  "email",                          null: false
    t.string  "password_digest"
    t.boolean "admin",           default: true
  end

  create_table "measurements", force: true do |t|
    t.integer "user_id"
    t.string  "active_score"
    t.string  "calories_bmr"
    t.string  "calories_out"
    t.string  "distances_total_distance"
    t.string  "distances_tracker_distance"
    t.string  "distances_logged_distance"
    t.string  "distances_veryactive_distance"
    t.string  "distances_moderateactive_distance"
    t.string  "distances_lightlyactive_distance"
    t.string  "distances_sedentaryactive_distance"
    t.string  "fairly_active_min"
    t.string  "lightly_active_min"
    t.string  "marginal_calories"
    t.string  "sedentary_min"
    t.string  "steps_taken"
    t.string  "veryActive_min"
    t.string  "device_battery"
    t.string  "device_version"
    t.string  "active_minutes_goal"
    t.string  "calories_out_goal"
    t.string  "distance_goal"
    t.string  "steps_goal"
  end

  create_table "users", force: true do |t|
    t.integer "admin_id"
    t.string  "name"
    t.string  "email"
    t.string  "provider"
    t.string  "uid"
    t.string  "oauth_token"
    t.string  "oauth_secret"
  end

end
