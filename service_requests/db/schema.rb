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

ActiveRecord::Schema[7.0].define(version: 2024_01_10_164949) do
  create_table "applicants", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_applicants_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_applicants_on_name"
    t.index ["resource_type", "resource_id"], name: "index_applicants_on_resource"
  end

  create_table "approvers", force: :cascade do |t|
    t.string "name"
    t.integer "step"
    t.string "comments"
    t.string "decision"
    t.integer "template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "service_requests", force: :cascade do |t|
    t.string "request"
    t.integer "temp_id"
    t.integer "current_step"
    t.string "applicant_name"
    t.integer "unique_id"
    t.string "dept"
    t.string "approval_status"
    t.string "approval_flow"
    t.string "field_name"
    t.string "field_response"
    t.string "current_approver"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates", force: :cascade do |t|
    t.integer "template_id"
    t.string "name"
    t.string "applicants"
    t.string "approval_flow"
    t.string "field"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates_applicants", id: false, force: :cascade do |t|
    t.integer "template_id"
    t.integer "applicant_id"
    t.index ["applicant_id"], name: "index_templates_applicants_on_applicant_id"
    t.index ["template_id", "applicant_id"], name: "index_templates_applicants_on_template_id_and_applicant_id"
    t.index ["template_id"], name: "index_templates_applicants_on_template_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.integer "unique_id"
    t.string "role"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
