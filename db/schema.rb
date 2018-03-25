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

ActiveRecord::Schema.define(version: 20180325191154) do

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4
    t.string   "text",       limit: 255
  end

  create_table "contents", force: :cascade do |t|
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "course_name",      limit: 255
    t.string   "menu_name_1",      limit: 255
    t.string   "menu_name_2",      limit: 255
    t.string   "menu_name_3",      limit: 255
    t.string   "menu_name_1_text", limit: 255
    t.string   "menu_name_2_text", limit: 255
    t.string   "menu_name_3_text", limit: 255
  end

  create_table "progresses", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "progress",   limit: 4
    t.integer  "user_id",    limit: 4
  end

  create_table "traing_contents", force: :cascade do |t|
    t.string   "picture_1",  limit: 255
    t.text     "text_1",     limit: 65535
    t.string   "picture_2",  limit: 255
    t.text     "text_2",     limit: 65535
    t.string   "picture_3",  limit: 255
    t.text     "text_3",     limit: 65535
    t.text     "point",      limit: 65535
    t.integer  "course_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "training_days", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",       limit: 4
    t.string   "training_days", limit: 255
  end

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
    t.string   "nickname",               limit: 255
    t.integer  "select_course",          limit: 4
    t.string   "date_mon",               limit: 255
    t.string   "date_tue",               limit: 255
    t.string   "date_wed",               limit: 255
    t.string   "date_thu",               limit: 255
    t.string   "date_fri",               limit: 255
    t.string   "date_sat",               limit: 255
    t.string   "date_sun",               limit: 255
    t.string   "menu_name_1_text",       limit: 255
    t.string   "menu_name_2_text",       limit: 255
    t.string   "menu_name_3_text",       limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
