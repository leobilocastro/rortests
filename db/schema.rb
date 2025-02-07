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

ActiveRecord::Schema.define(version: 20190424124614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street_name"
    t.string   "number"
    t.string   "neighborhood"
    t.string   "zip_code"
    t.string   "additional_info"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_services", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "service_id",  null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.datetime "start_time"
    t.boolean  "completed"
    t.text     "observations"
    t.integer  "user_id"
    t.integer  "service_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["service_id"], name: "index_contracts_on_service_id", using: :btree
    t.index ["user_id"], name: "index_contracts_on_user_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.boolean  "approved"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contract_id"
    t.index ["contract_id"], name: "index_payments_on_contract_id", using: :btree
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phones_on_user_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.text     "description"
    t.string   "title"
    t.decimal  "price"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_services_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name"
    t.integer  "gender"
    t.date     "date_of_birth"
    t.string   "cpf"
    t.integer  "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "contracts", "services"
  add_foreign_key "contracts", "users"
  add_foreign_key "payments", "contracts"
  add_foreign_key "phones", "users"
  add_foreign_key "services", "users"
end
