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

ActiveRecord::Schema.define(version: 2021_08_09_191458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coords", force: :cascade do |t|
    t.string "name"
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_coords_on_school_id"
  end

  create_table "drops", force: :cascade do |t|
    t.string "name"
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_drops_on_school_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.bigint "school_id", null: false
    t.bigint "coord_id", null: false
    t.bigint "drop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coord_id"], name: "index_groups_on_coord_id"
    t.index ["drop_id"], name: "index_groups_on_drop_id"
    t.index ["school_id"], name: "index_groups_on_school_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.string "mat"
    t.string "school"
    t.string "group"
    t.string "drop"
    t.string "arrive"
    t.string "pick"
    t.integer "show"
    t.string "group_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "staff_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["group_id"], name: "index_schedules_on_group_id"
    t.index ["staff_id"], name: "index_schedules_on_staff_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "id_empl"
    t.bigint "school_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_staffs_on_role_id"
    t.index ["school_id"], name: "index_staffs_on_school_id"
    t.index ["user_id"], name: "index_staffs_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "mat"
    t.bigint "school_id", null: false
    t.bigint "group_id", null: false
    t.index ["group_id"], name: "index_students_on_group_id"
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "id_emp"
    t.string "campus"
    t.string "rol"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

  add_foreign_key "coords", "schools"
  add_foreign_key "drops", "schools"
  add_foreign_key "groups", "coords"
  add_foreign_key "groups", "drops"
  add_foreign_key "groups", "schools"
  add_foreign_key "schedules", "groups"
  add_foreign_key "schedules", "staffs"
  add_foreign_key "staffs", "roles"
  add_foreign_key "staffs", "schools"
  add_foreign_key "staffs", "users"
  add_foreign_key "students", "groups"
  add_foreign_key "students", "schools"
end
