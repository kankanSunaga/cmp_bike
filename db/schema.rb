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

ActiveRecord::Schema.define(version: 20170604214337) do

  create_table "colors", force: :cascade do |t|
    t.string   "color"
    t.integer  "roadbike_id"
    t.string   "picture"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "sub_color"
    t.string   "official_color"
    t.string   "sub_color2"
  end

  create_table "makers", force: :cascade do |t|
    t.string   "maker_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "year_id"
    t.text     "maker_comment"
  end

  create_table "mangements", force: :cascade do |t|
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "temporary_flag", default: false, null: false
    t.string   "email"
  end

  create_table "roadbikes", force: :cascade do |t|
    t.integer  "maker_id"
    t.string   "bike_series"
    t.string   "bike_name"
    t.integer  "frame_type"
    t.string   "rear_derailleur"
    t.string   "front_derailleur"
    t.string   "crank"
    t.string   "brake"
    t.string   "chain"
    t.string   "sprocket"
    t.string   "sti_lever"
    t.string   "bb"
    t.string   "wheel"
    t.string   "color"
    t.string   "saddle"
    t.string   "seat_pillar"
    t.string   "handle"
    t.string   "stem"
    t.string   "tire"
    t.boolean  "pedal"
    t.integer  "valve"
    t.string   "accessory"
    t.string   "maker_url"
    t.string   "shop_url"
    t.string   "picture"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "price"
    t.integer  "gear"
    t.string   "fork"
    t.string   "frame_name"
    t.integer  "fork_type"
    t.integer  "tire_type"
    t.integer  "component"
    t.integer  "bike_type"
    t.boolean  "sex",              default: false, null: false
    t.integer  "road_bike_type"
    t.integer  "brake_type"
    t.text     "bike_comment"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer  "size"
    t.integer  "min_height"
    t.integer  "max_height"
    t.float    "weight"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "roadbike_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "years", force: :cascade do |t|
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
