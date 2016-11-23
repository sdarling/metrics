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

ActiveRecord::Schema.define(version: 20161123094331) do

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

  create_table "csf_categories", force: :cascade do |t|
    t.integer  "csf_function_id"
    t.string   "name"
    t.text     "description"
    t.string   "abbreviation"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "slug"
  end

  add_index "csf_categories", ["slug"], name: "index_csf_categories_on_slug", unique: true, using: :btree

  create_table "csf_category_metrics", force: :cascade do |t|
    t.integer "csf_category_id"
    t.integer "metric_id"
  end

  add_index "csf_category_metrics", ["csf_category_id", "metric_id"], name: "index_csf_category_metrics_on_csf_category_id_and_metric_id", using: :btree

  create_table "csf_functions", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.text     "goal_question"
    t.decimal  "avg_maturity_level", precision: 10, scale: 2
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "slug"
  end

  add_index "csf_functions", ["slug"], name: "index_csf_functions_on_slug", unique: true, using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "maturity_level_values", force: :cascade do |t|
    t.integer  "maturity_level_id"
    t.datetime "effective_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "metric_target_values", force: :cascade do |t|
    t.integer  "metric_id"
    t.integer  "period_id"
    t.decimal  "target_value",          precision: 10, scale: 2
    t.integer  "target_maturity_level"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "metric_users", force: :cascade do |t|
    t.integer  "metric_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "metric_users", ["metric_id", "user_id"], name: "index_metric_users_on_metric_id_and_user_id", using: :btree

  create_table "metric_values", force: :cascade do |t|
    t.integer  "metric_id"
    t.integer  "period_id"
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
    t.integer  "owner_id"
    t.decimal  "ml_1",                  precision: 10, scale: 2, default: 29.0
    t.decimal  "ml_2",                  precision: 10, scale: 2, default: 49.0
    t.decimal  "ml_3",                  precision: 10, scale: 2, default: 69.0
    t.decimal  "ml_4",                  precision: 10, scale: 2, default: 79.0
    t.boolean  "active",                                         default: true
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.string   "slug"
  end

  add_index "metrics", ["slug"], name: "index_metrics_on_slug", unique: true, using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.integer  "year"
    t.integer  "fy_year"
    t.integer  "month"
    t.string   "month_name"
    t.string   "month_short_name"
    t.integer  "quarter"
    t.integer  "fy_quarter"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "source_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sccm_metrics", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "value",       precision: 10, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "scores", force: :cascade do |t|
    t.datetime "effective_date"
    t.decimal  "actual_value",    precision: 10, scale: 2
    t.decimal  "target_value",    precision: 10, scale: 2
    t.integer  "csf_function_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "sep_metrics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "system_center_imports", force: :cascade do |t|
    t.string   "category"
    t.integer  "report_id"
    t.integer  "targeted_count"
    t.integer  "failed_count"
    t.integer  "unknown_count"
    t.integer  "non_compliant_count"
    t.integer  "compliant_count"
    t.string   "collection_name"
    t.decimal  "compliance_percentage",           precision: 10, scale: 2
    t.string   "configuration_baseline_revision"
    t.string   "configuration_baseline_name"
    t.decimal  "average_patch_duration_days",     precision: 10, scale: 2
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
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
    t.string   "slug"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree

end
