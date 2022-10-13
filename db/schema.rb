# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_13_093200) do

  create_table "diseases", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "disease_name", null: false
    t.date "onset_date", null: false
    t.integer "outcome_id"
    t.date "outcome_date"
    t.bigint "user_id", null: false
    t.bigint "hospital_clinic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hospital_clinic_id"], name: "index_diseases_on_hospital_clinic_id"
    t.index ["user_id"], name: "index_diseases_on_user_id"
  end

  create_table "hospital_clinics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "institution_name", null: false
    t.integer "clinical_department_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_hospital_clinics_on_user_id"
  end

  create_table "kartes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "doctor", null: false
    t.string "subjective", null: false
    t.string "objective", null: false
    t.string "assessment", null: false
    t.string "plan", null: false
    t.string "next", null: false
    t.bigint "user_id", null: false
    t.bigint "hospital_clinic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hospital_clinic_id"], name: "index_kartes_on_hospital_clinic_id"
    t.index ["user_id"], name: "index_kartes_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.date "birthday", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "diseases", "hospital_clinics"
  add_foreign_key "diseases", "users"
  add_foreign_key "hospital_clinics", "users"
  add_foreign_key "kartes", "hospital_clinics"
  add_foreign_key "kartes", "users"
end
