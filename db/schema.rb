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

ActiveRecord::Schema[7.0].define(version: 2023_02_15_234612) do
  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routines", force: :cascade do |t|
    t.string "name"
    t.integer "rest"
    t.string "sets"
    t.integer "exercise_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_routines_on_exercise_id"
    t.index ["user_id"], name: "index_routines_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "gender"
    t.integer "age"
    t.float "height"
    t.float "weight"
    t.string "activity_level"
    t.integer "tdee"
    t.float "water_intake"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "routines", "exercises"
  add_foreign_key "routines", "users"
end
