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

ActiveRecord::Schema.define(version: 20130802180053) do

  create_table "statuses", force: true do |t|
    t.text     "issue"
    t.integer  "amount_needed"
    t.integer  "user_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_wallets", force: true do |t|
    t.integer  "balance"
    t.integer  "lended"
    t.integer  "borrowed"
    t.integer  "payedback"
    t.integer  "owed"
    t.integer  "disputes"
    t.integer  "interest_rate"
    t.integer  "other_fees"
    t.integer  "user_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "usernmae"
    t.string   "password"
    t.string   "email"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zipcode"
    t.string   "drivers_licence"
    t.string   "ssn"
    t.integer  "user_wallet_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
