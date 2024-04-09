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

ActiveRecord::Schema[7.1].define(version: 2024_04_06_195748) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mentees", force: :cascade do |t|
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_mentees_on_user_id"
  end

<<<<<<< HEAD
  create_table "mentor_skills", force: :cascade do |t|
    t.bigint "mentor_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentor_id"], name: "index_mentor_skills_on_mentor_id"
    t.index ["skill_id"], name: "index_mentor_skills_on_skill_id"
=======
  create_table "mentoring_appointments", force: :cascade do |t|
    t.bigint "mentor_id"
    t.bigint "mentee_id"
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentee_id"], name: "index_mentoring_appointments_on_mentee_id"
    t.index ["mentor_id"], name: "index_mentoring_appointments_on_mentor_id"
>>>>>>> 79ece0c (feat: create mentoring appointments)
  end

  create_table "mentors", force: :cascade do |t|
    t.string "url"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_mentors_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
