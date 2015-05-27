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

ActiveRecord::Schema.define(version: 20150527075633) do

  create_table "doctor_patients", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "doctor_id",  limit: 4
    t.integer  "user_id",    limit: 4
    t.text     "advise",     limit: 65535
    t.string   "user_name",  limit: 255
  end

  create_table "meals", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "resturant_id", limit: 4
    t.float    "calory",       limit: 24
    t.float    "protein",      limit: 24
    t.float    "vitaminA6",    limit: 24
    t.float    "vitaminD7",    limit: 24
    t.float    "vitaminE8",    limit: 24
    t.float    "vitaminK",     limit: 24
    t.float    "vitaminC",     limit: 24
    t.float    "vitaminB1",    limit: 24
    t.float    "vitaminB2",    limit: 24
    t.float    "vitaminB3",    limit: 24
    t.float    "vitaminB6",    limit: 24
    t.float    "vitaminB12",   limit: 24
    t.float    "vitaminB9",    limit: 24
    t.float    "cholic_acid",  limit: 24
    t.float    "bionic_acid",  limit: 24
    t.float    "vitaminB5",    limit: 24
    t.float    "calcuim",      limit: 24
    t.float    "phosphorus",   limit: 24
    t.float    "magnesium",    limit: 24
    t.float    "iron",         limit: 24
    t.float    "zinc",         limit: 24
    t.float    "iodine",       limit: 24
    t.float    "selenium",     limit: 24
    t.float    "fluorine",     limit: 24
    t.string   "name",         limit: 255
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",      limit: 4
    t.integer  "resturant_id", limit: 4
    t.integer  "meal_id",      limit: 4
    t.integer  "sum_of_money", limit: 4
  end

  create_table "user2s", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "hospital_name",          limit: 255
    t.string   "hospital_address",       limit: 255
  end

  add_index "user2s", ["email"], name: "index_user2s_on_email", unique: true, using: :btree
  add_index "user2s", ["reset_password_token"], name: "index_user2s_on_reset_password_token", unique: true, using: :btree

  create_table "user3s", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "resturant_name",         limit: 255
    t.string   "resturant_address",      limit: 255
  end

  add_index "user3s", ["email"], name: "index_user3s_on_email", unique: true, using: :btree
  add_index "user3s", ["reset_password_token"], name: "index_user3s_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "roc_id",                 limit: 255
    t.integer  "doc_id",                 limit: 4
    t.integer  "resturant_id",           limit: 4
    t.float    "calory",                 limit: 24
    t.float    "protein",                limit: 24
    t.float    "vitaminA6",              limit: 24
    t.float    "vitaminD7",              limit: 24
    t.float    "vitaminE8",              limit: 24
    t.float    "vitaminK",               limit: 24
    t.float    "vitaminC",               limit: 24
    t.float    "vitaminB1",              limit: 24
    t.float    "vitaminB2",              limit: 24
    t.float    "vitaminB3",              limit: 24
    t.float    "vitaminB6",              limit: 24
    t.float    "vitaminB12",             limit: 24
    t.float    "vitaminB9",              limit: 24
    t.float    "cholic_acid",            limit: 24
    t.float    "bionic_acid",            limit: 24
    t.float    "vitaminB5",              limit: 24
    t.float    "calcuim",                limit: 24
    t.float    "phosphorus",             limit: 24
    t.float    "magnesium",              limit: 24
    t.float    "iron",                   limit: 24
    t.float    "zinc",                   limit: 24
    t.float    "iodine",                 limit: 24
    t.float    "selenium",               limit: 24
    t.float    "fluorine",               limit: 24
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
