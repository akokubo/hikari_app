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

ActiveRecord::Schema.define(version: 20150914060902) do

  create_table "acquisitions", force: true do |t|
    t.integer  "mission_id"
    t.integer  "category_id"
    t.integer  "experiences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acquisitions", ["category_id", "mission_id"], name: "index_acquisitions_on_category_id_and_mission_id", unique: true
  add_index "acquisitions", ["category_id"], name: "index_acquisitions_on_category_id"
  add_index "acquisitions", ["mission_id"], name: "index_acquisitions_on_mission_id"

  create_table "assings", force: true do |t|
    t.integer  "mission_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assings", ["mission_id"], name: "index_assings_on_mission_id"
  add_index "assings", ["user_id"], name: "index_assings_on_user_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.integer  "value"
    t.integer  "sufficiencies"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "missions", force: true do |t|
    t.string   "description"
    t.integer  "category_id"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "missions", ["category_id"], name: "index_missions_on_category_id"
  add_index "missions", ["level_id"], name: "index_missions_on_level_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
