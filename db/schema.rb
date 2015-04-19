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

ActiveRecord::Schema.define(version: 20150419214720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "email"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "nickname"
    t.string   "name"
    t.string   "state"
    t.string   "city"
    t.string   "portafolio_1"
    t.string   "portafolio_2"
    t.string   "portafolio_3"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "avatar"
    t.float    "min_rate"
    t.float    "max_rate"
    t.float    "avg_review"
    t.boolean  "phone_verified",         default: false
    t.boolean  "profile_completed",      default: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "active",                 default: true
    t.string   "phone_number"
  end

  add_index "artists", ["email"], name: "index_artists_on_email", unique: true, using: :btree
  add_index "artists", ["reset_password_token"], name: "index_artists_on_reset_password_token", unique: true, using: :btree

  create_table "blank_walls", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "min_budget"
    t.string   "max_budget"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "area"
    t.date     "done_by"
    t.text     "description"
    t.string   "picture_1"
    t.string   "picture_2"
    t.string   "picture_3"
  end

  add_index "blank_walls", ["owner_id"], name: "index_blank_walls_on_owner_id", using: :btree

  create_table "owners", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "logo"
    t.boolean  "active",                 default: true
  end

  add_index "owners", ["email"], name: "index_owners_on_email", unique: true, using: :btree
  add_index "owners", ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "blank_walls", "owners"
end
