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

ActiveRecord::Schema.define(version: 20161028202510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "csf_functions", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "avg_maturity_level", precision: 10, scale: 2
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "maturity_level_values", force: :cascade do |t|
    t.integer  "maturity_level_id"
    t.datetime "effective_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "maturity_levels", force: :cascade do |t|
    t.integer  "metric_id"
    t.integer  "weighted_value"
    t.decimal  "low",            precision: 10, scale: 2
    t.decimal  "high",           precision: 10, scale: 2
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "metric_values", force: :cascade do |t|
    t.integer  "metric_id"
    t.decimal  "value",          precision: 10, scale: 2
    t.integer  "maturity_level"
    t.datetime "effective_date"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "metrics", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "organization_id"
    t.integer  "csf_function_id"
    t.integer  "unit_id"
    t.integer  "recent_maturity_level"
    t.integer  "target_maturity_level"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.datetime "effective_date"
    t.decimal  "actual_value",    precision: 10, scale: 2
    t.decimal  "target_value",    precision: 10, scale: 2
    t.integer  "csf_function_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "software_centers", force: :cascade do |t|
    t.string   "category"
    t.integer  "targeter"
    t.integer  "failed"
    t.integer  "unknown"
    t.integer  "non_compliant"
    t.integer  "compliant"
    t.string   "collection_name"
    t.string   "compliance_percentage"
    t.string   "target_compliant_percentage"
    t.string   "configuration_baseline_revision"
    t.string   "conviguration_baseline_name"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.boolean  "superadmin",             default: false, null: false
    t.string   "firstname",                              null: false
    t.string   "lastname",                               null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
