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

ActiveRecord::Schema.define(version: 20141021143150) do

  create_table "answers", force: true do |t|
    t.integer  "answer_1"
    t.integer  "answer_2"
    t.integer  "answer_3"
    t.integer  "answer_4"
    t.integer  "answer_5"
    t.integer  "questionnaire_id"
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buyers", force: true do |t|
    t.string   "image_url"
    t.integer  "buyer_id"
    t.string   "buyer_username"
    t.string   "buyer_first_name"
    t.string   "buyer_last_name"
    t.string   "buyer_email"
    t.integer  "buyer_net_worth"
    t.string   "buyer_birthdate"
    t.string   "buyer_level_of_education"
    t.string   "buyer_preferred_industry"
    t.string   "buyer_marital_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.integer  "company_id"
    t.string   "company_name"
    t.string   "company_industry"
    t.integer  "company_number_of_employees"
    t.integer  "company_taxid"
    t.integer  "company_revenue_current_year"
    t.integer  "company_revenue_last_year"
    t.integer  "company_revenue_2_year"
    t.integer  "company_EBITDA"
    t.integer  "company_years_in_business"
    t.integer  "seller_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "essays", force: true do |t|
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "question_4"
    t.text     "question_5"
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questionnaires", force: true do |t|
    t.string   "questionnaire_name"
    t.integer  "answer_1"
    t.integer  "answer_2"
    t.integer  "answer_3"
    t.integer  "answer_4"
    t.integer  "answer_5"
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", force: true do |t|
    t.integer  "seller_id"
    t.string   "image_url"
    t.string   "seller_username"
    t.string   "seller_first_name"
    t.string   "seller_last_name"
    t.string   "seller_email"
    t.string   "seller_birthdate"
    t.string   "seller_level_of_education"
    t.string   "seller_industry"
    t.string   "seller_marital_status"
    t.string   "seller_children"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
