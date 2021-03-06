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

ActiveRecord::Schema.define(version: 20200903200447) do

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "giveaways", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "location"
    t.datetime "time"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "description2"
    t.datetime "end_time"
    t.integer  "max_trees"
    t.integer  "tree_limit"
    t.datetime "close_time"
    t.text     "confirmation_text"
    t.text     "referral"
    t.integer  "logo1_id"
    t.integer  "logo2_id"
    t.integer  "logo3_id"
    t.integer  "logo4_id"
    t.integer  "logo5_id"
    t.integer  "logo6_id"
    t.boolean  "no_referral"
    t.boolean  "no_philly_validation"
    t.text     "referral_question"
    t.boolean  "use_one_time_links"
    t.text     "valid_codes"
    t.text     "used_codes"
    t.boolean  "ask_if_cell_phone"
    t.boolean  "ask_if_attended"
    t.boolean  "require_referral"
    t.boolean  "use_timeslots"
    t.text     "timeslots"
    t.integer  "max_reservations_per_timeslot"
    t.boolean  "use_delivery"
    t.integer  "max_delivery_registrations"
    t.text     "pickup_delivery_text"
  end

  create_table "giveaways_trees", id: false, force: :cascade do |t|
    t.integer "tree_id",     null: false
    t.integer "giveaway_id", null: false
  end

  create_table "logos", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "requests", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "tree_id"
    t.integer  "giveaway_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "session_id"
    t.string   "phone_number"
    t.string   "mailing_street1"
    t.string   "mailing_street2"
    t.string   "mailing_city"
    t.string   "mailing_state"
    t.string   "mailing_zip"
    t.string   "planting_street1"
    t.string   "planting_street2"
    t.string   "planting_city"
    t.string   "planting_state"
    t.string   "planting_zip"
    t.boolean  "different_address"
    t.text     "referral"
    t.integer  "tree2_id"
    t.string   "one_time_link_code"
    t.boolean  "is_cell_phone"
    t.string   "previously_attended"
    t.string   "timeslot"
    t.boolean  "is_delivery"
  end

  create_table "stored_texts", force: :cascade do |t|
    t.string   "name"
    t.text     "the_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sus", force: :cascade do |t|
    t.string   "session_id"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trees", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "original_stock"
    t.integer  "order"
  end

end
