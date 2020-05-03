# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_03_044643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bot_trackers", force: :cascade do |t|
    t.string "bot_name"
    t.boolean "search_engine"
    t.string "matcher"
    t.string "ip_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cookie_acceptances", force: :cascade do |t|
    t.string "name"
    t.string "accept_token"
    t.string "ip_address"
    t.boolean "accepted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "page_visits", force: :cascade do |t|
    t.date "visit_date"
    t.string "ip_address"
    t.string "browser_used"
    t.boolean "mobile_device"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "page"
    t.string "controller"
    t.string "device_name"
    t.string "platform"
    t.boolean "internet_explorer"
    t.string "internet_explorer_version"
    t.string "browser_version"
  end

end
