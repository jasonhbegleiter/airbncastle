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

ActiveRecord::Schema.define(version: 2018_06_06_122452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "price"
    t.boolean "accepted"
    t.datetime "start_date"
    t.integer "no_of_nights"
    t.boolean "completed"
    t.integer "no_confirmed_guests"
    t.bigint "castle_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["castle_id"], name: "index_bookings_on_castle_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "castle_amenities", force: :cascade do |t|
    t.bigint "castle_id"
    t.bigint "amenity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_castle_amenities_on_amenity_id"
    t.index ["castle_id"], name: "index_castle_amenities_on_castle_id"
  end

  create_table "castles", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.integer "price_per_night"
    t.text "address"
    t.integer "no_of_guests"
    t.integer "no_of_bedrooms"
    t.integer "no_of_bathrooms"
    t.bigint "city_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.text "review"
    t.index ["city_id"], name: "index_castles_on_city_id"
    t.index ["user_id"], name: "index_castles_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "castles"
  add_foreign_key "bookings", "users"
  add_foreign_key "castle_amenities", "amenities"
  add_foreign_key "castle_amenities", "castles"
  add_foreign_key "castles", "cities"
  add_foreign_key "castles", "users"
  add_foreign_key "cities", "countries"
end
