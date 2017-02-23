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

ActiveRecord::Schema.define(version: 20170223161812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "content"
  end

  create_table "nations", force: :cascade do |t|
    t.string  "nation_name"
    t.string  "economy_type"
    t.string  "basic_geography"
    t.string  "religion"
    t.integer "user_id"
    t.integer "stability",       default: 0
    t.integer "population",      default: 1000000
    t.integer "capital",         default: 0
    t.integer "lumber",          default: 0
    t.integer "oil",             default: 0
    t.integer "minerals",        default: 0
    t.integer "metal",           default: 0
  end

  create_table "responses", force: :cascade do |t|
    t.integer "event_id"
    t.string  "content"
    t.integer "population"
    t.integer "lumber"
    t.integer "stability"
    t.integer "metal"
    t.integer "oil"
    t.integer "capital"
    t.integer "minerals"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
