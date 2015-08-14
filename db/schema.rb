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

ActiveRecord::Schema.define(version: 20150813205132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.integer  "department_id"
    t.string   "course_number"
    t.string   "professor"
    t.string   "location"
    t.string   "day"
    t.datetime "time_start"
    t.datetime "time_end"
    t.text     "summary"
    t.integer  "paired_course_id"
    t.boolean  "online"
  end

  create_table "courses_materials", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "material_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "department_name"
  end

  create_table "materials", force: :cascade do |t|
    t.string  "name"
    t.integer "cost"
    t.text    "link"
  end

  create_table "prerequisites", force: :cascade do |t|
    t.integer "course_id"
    t.integer "linked_course_id"
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "username"
    t.integer "graduation_year"
    t.integer "major_id"
    t.integer "minor_id"
    t.string  "password_digest"
  end

end
