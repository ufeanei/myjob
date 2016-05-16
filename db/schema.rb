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

ActiveRecord::Schema.define(version: 20160511220806) do

  create_table "fylkes", force: true do |t|
    t.string "name"
  end

  create_table "job_applications", force: true do |t|
    t.integer  "job_id"
    t.integer  "user_id"
    t.boolean  "awarded",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "job_applications", ["job_id", "user_id"], name: "index_job_applications_on_job_id_and_user_id", unique: true

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "payment"
    t.string   "street_addr"
    t.string   "destination_addr"
    t.string   "contact_number"
    t.integer  "fylke_id"
    t.integer  "user_id"
    t.integer  "kommune_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "kommunes", force: true do |t|
    t.string  "name"
    t.integer "fylke_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "user_self_description"
    t.integer  "kommune_id"
    t.boolean  "admin",                 default: false
    t.string   "phone"
    t.string   "street_addr"
    t.string   "car_reg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_digest"
    t.string   "confirmation_digest"
    t.boolean  "confirmed",             default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
