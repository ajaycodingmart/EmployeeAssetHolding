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

ActiveRecord::Schema.define(version: 20171115074749) do

  create_table "assets", force: :cascade do |t|
    t.string "name"
    t.string "asset_id"
    t.text "description"
    t.decimal "quantity_avaliable"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "total_quantity"
    t.decimal "quantity_used"
    t.integer "employee_id"
    t.index ["company_id"], name: "index_assets_on_company_id"
    t.index ["employee_id"], name: "index_assets_on_employee_id"
  endp

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.boolean "has_assets"
    t.string "emp_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
  end

end
