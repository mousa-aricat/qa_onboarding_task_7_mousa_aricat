# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_02_16_102726) do
  create_table "attendance_setups", force: :cascade do |t|
    t.integer "branch_id"
    t.datetime "created_at", null: false
    t.boolean "roaster"
    t.datetime "updated_at", null: false
  end

  create_table "branches", force: :cascade do |t|
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.string "location"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "branch_id"
    t.datetime "created_at", null: false
    t.string "email"
    t.bigint "employment_number"
    t.date "hire_date"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "financial_packages", force: :cascade do |t|
    t.float "amount"
    t.datetime "created_at", null: false
    t.integer "employee_id"
    t.date "from_date"
    t.date "to_date"
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "branch_id"
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "termination_packages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "date"
    t.datetime "updated_at", null: false
  end

  create_table "terminations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "date"
    t.integer "employee_id"
    t.datetime "updated_at", null: false
  end
end
