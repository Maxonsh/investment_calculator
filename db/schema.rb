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

ActiveRecord::Schema.define(version: 20170610165528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leans", force: :cascade do |t|
    t.integer  "legal_entity_id"
    t.integer  "amount",                null: false
    t.integer  "loan_term",             null: false
    t.decimal  "annual_rate"
    t.integer  "payment_period"
    t.decimal  "annual_rate_delay"
    t.float    "mounthly_debt"
    t.integer  "mounthly_percent_debt"
    t.float    "total_monthly_debt"
    t.integer  "payout"
    t.float    "interest_paid"
    t.integer  "paid_expected_return"
    t.decimal  "annual_yield"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["legal_entity_id"], name: "index_leans_on_legal_entity_id", using: :btree
  end

  create_table "legal_entities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monthly_payments", force: :cascade do |t|
    t.integer  "lean_id"
    t.integer  "month"
    t.float    "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lean_id"], name: "index_monthly_payments_on_lean_id", using: :btree
  end

end
