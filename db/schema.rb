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

ActiveRecord::Schema.define(version: 20141110155252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "industries", force: true do |t|
    t.string   "name"
    t.string   "abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", force: true do |t|
    t.integer  "from_user_id"
    t.integer  "to_user_id"
    t.integer  "state",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invitations", ["from_user_id"], name: "index_invitations_on_from_user_id", using: :btree
  add_index "invitations", ["to_user_id"], name: "index_invitations_on_to_user_id", using: :btree

  create_table "remarks", force: true do |t|
    t.string   "content"
    t.integer  "user_id_id"
    t.integer  "supporters", default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
  end

  add_index "remarks", ["user_id_id"], name: "index_remarks_on_user_id_id", using: :btree

  create_table "start_ups", force: true do |t|
    t.string   "logo_url"
    t.string   "name"
    t.integer  "likes_count"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "skill"
    t.text     "desc"
    t.string   "corp"
    t.string   "position"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.boolean  "public_email",           default: true
    t.string   "avatar"
    t.integer  "industry_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
