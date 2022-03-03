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

ActiveRecord::Schema[7.0].define(version: 2022_03_03_155951) do
  create_table "bugs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "types"
    t.datetime "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "projectt_id"
    t.string "statuses"
    t.index ["projectt_id"], name: "index_bugs_on_projectt_id"
  end

  create_table "projectts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "manager_id"
    t.integer "developer_id"
    t.integer "qa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_projectts_on_developer_id"
    t.index ["manager_id"], name: "index_projectts_on_manager_id"
    t.index ["qa_id"], name: "index_projectts_on_qa_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_type"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bugs", "projectts"
  add_foreign_key "projectts", "users", column: "developer_id"
  add_foreign_key "projectts", "users", column: "manager_id"
  add_foreign_key "projectts", "users", column: "qa_id"
end
