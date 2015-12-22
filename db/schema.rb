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

ActiveRecord::Schema.define(version: 20150528163920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctor_patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "doctor_id"
    t.integer  "user_id"
    t.text     "advise"
    t.string   "user_name"
  end

  create_table "meals", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "resturant_id"
    t.float    "calory"
    t.float    "protein"
    t.float    "vitaminA6"
    t.float    "vitaminD7"
    t.float    "vitaminE8"
    t.float    "vitaminK"
    t.float    "vitaminC"
    t.float    "vitaminB1"
    t.float    "vitaminB2"
    t.float    "vitaminB3"
    t.float    "vitaminB6"
    t.float    "vitaminB12"
    t.float    "vitaminB9"
    t.float    "cholic_acid"
    t.float    "bionic_acid"
    t.float    "vitaminB5"
    t.float    "calcuim"
    t.float    "phosphorus"
    t.float    "magnesium"
    t.float    "iron"
    t.float    "zinc"
    t.float    "iodine"
    t.float    "selenium"
    t.float    "fluorine"
    t.string   "name"
  end

  create_table "order_meals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
    t.integer  "meal_id"
    t.integer  "quantity"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "resturant_id"
    t.integer  "meal_id"
    t.integer  "sum_of_money"
  end

  create_table "user2s", force: :cascade do |t|
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
    t.string   "name"
    t.string   "hospital_name"
    t.string   "hospital_address"
  end

  add_index "user2s", ["email"], name: "index_user2s_on_email", unique: true, using: :btree
  add_index "user2s", ["reset_password_token"], name: "index_user2s_on_reset_password_token", unique: true, using: :btree

  create_table "user3s", force: :cascade do |t|
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
    t.string   "resturant_name"
    t.string   "resturant_address"
  end

  add_index "user3s", ["email"], name: "index_user3s_on_email", unique: true, using: :btree
  add_index "user3s", ["reset_password_token"], name: "index_user3s_on_reset_password_token", unique: true, using: :btree

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
    t.string   "name"
    t.string   "roc_id"
    t.integer  "doc_id"
    t.integer  "resturant_id"
    t.float    "calory"
    t.float    "protein"
    t.float    "vitaminA6"
    t.float    "vitaminD7"
    t.float    "vitaminE8"
    t.float    "vitaminK"
    t.float    "vitaminC"
    t.float    "vitaminB1"
    t.float    "vitaminB2"
    t.float    "vitaminB3"
    t.float    "vitaminB6"
    t.float    "vitaminB12"
    t.float    "vitaminB9"
    t.float    "cholic_acid"
    t.float    "bionic_acid"
    t.float    "vitaminB5"
    t.float    "calcuim"
    t.float    "phosphorus"
    t.float    "magnesium"
    t.float    "iron"
    t.float    "zinc"
    t.float    "iodine"
    t.float    "selenium"
    t.float    "fluorine"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
