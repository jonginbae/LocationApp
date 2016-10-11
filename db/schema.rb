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

ActiveRecord::Schema.define(version: 20161009235252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer  "teacher_id"
    t.string   "activity_name"
    t.string   "place"
    t.datetime "date_from"
    t.datetime "date_to"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "activity_groups", force: :cascade do |t|
    t.integer  "activity_id"
    t.integer  "student_id"
    t.string   "confirm",     default: "N"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "position"
    t.string   "parent1_first_name"
    t.string   "parent1_last_name"
    t.string   "parent1_phone_number"
    t.string   "parent2_first_name"
    t.string   "parent2_last_name"
    t.string   "parent2_phone_name"
    t.string   "parent1_email"
    t.string   "parent2_email"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "student_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "user_id"
    t.string   "email"
    t.text     "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "position"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end