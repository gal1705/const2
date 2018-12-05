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

ActiveRecord::Schema.define(version: 2018_12_04_194136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "logo"
    t.string "address"
    t.string "telephone"
    t.string "rut"
    t.string "legal_name"
    t.string "line_of_bussiness"
    t.string "admin_name"
    t.string "admin_email"
    t.string "admin_telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_companies_on_category_id"
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "project_companies", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_project_companies_on_company_id"
    t.index ["project_id"], name: "index_project_companies_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "role"
    t.string "project_address"
    t.string "showroom_address"
    t.string "showroom_telephone"
    t.string "opening_hours"
    t.text "description"
    t.text "characteristics"
    t.boolean "barbecue_area"
    t.boolean "gym"
    t.boolean "pool"
    t.boolean "multipurpose_room"
    t.boolean "laundry_room"
    t.boolean "controlled_access"
    t.boolean "visitors_parking"
    t.boolean "play_area"
    t.boolean "club_house"
    t.boolean "games_room"
    t.boolean "green_areas"
    t.boolean "bike_parking"
    t.boolean "parking"
    t.boolean "warehouses"
    t.text "arch_finishes"
    t.boolean "inmediate_availability"
    t.date "availability_date"
    t.integer "number_of_buildings"
    t.integer "number_of_floors"
    t.bigint "recompany_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "main_image"
    t.index ["recompany_id"], name: "index_projects_on_recompany_id"
  end

  create_table "recompanies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "logo"
    t.string "address"
    t.string "telephone"
    t.string "rut"
    t.string "legal_name"
    t.string "line_of_bussiness"
    t.string "admin_name"
    t.string "admin_email"
    t.string "admin_telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_recompanies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_recompanies_on_reset_password_token", unique: true
  end

  create_table "redescriptions", force: :cascade do |t|
    t.string "image"
    t.string "ppal_title"
    t.text "ppal_content"
    t.string "second_title"
    t.text "second_content"
    t.string "terc_title"
    t.text "terc_content"
    t.bigint "recompany_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recompany_id"], name: "index_redescriptions_on_recompany_id"
  end

  add_foreign_key "companies", "categories"
  add_foreign_key "project_companies", "companies"
  add_foreign_key "project_companies", "projects"
  add_foreign_key "projects", "recompanies"
  add_foreign_key "redescriptions", "recompanies"
end
