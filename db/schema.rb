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

ActiveRecord::Schema[8.0].define(version: 2025_07_02_140051) do
  create_table "anamneses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_anamneses_on_user_id"
  end

  create_table "answer_options", force: :cascade do |t|
    t.text "description"
    t.integer "customer_anamnesis_id", null: false
    t.integer "option_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_anamnesis_id"], name: "index_answer_options_on_customer_anamnesis_id"
    t.index ["option_id"], name: "index_answer_options_on_option_id"
  end

  create_table "customer_anamneses", force: :cascade do |t|
    t.integer "anamnesis_id", null: false
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anamnesis_id"], name: "index_customer_anamneses_on_anamnesis_id"
    t.index ["customer_id"], name: "index_customer_anamneses_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone"
    t.string "cpf"
    t.string "email"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "options", force: :cascade do |t|
    t.text "title"
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "title"
    t.integer "anamnesis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anamnesis_id"], name: "index_questions_on_anamnesis_id"
  end

  create_table "schedulings", force: :cascade do |t|
    t.datetime "beginning", null: false
    t.datetime "end", null: false
    t.decimal "value", precision: 10, scale: 2, default: "0.0"
    t.text "description"
    t.integer "user_id", null: false
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_schedulings_on_customer_id"
    t.index ["user_id"], name: "index_schedulings_on_user_id"
  end

  create_table "service_schedulings", force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "scheduling_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scheduling_id"], name: "index_service_schedulings_on_scheduling_id"
    t.index ["service_id"], name: "index_service_schedulings_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.decimal "value", precision: 10, scale: 2
    t.integer "duration"
    t.text "description"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "name"
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "anamneses", "users"
  add_foreign_key "answer_options", "customer_anamneses", column: "customer_anamnesis_id"
  add_foreign_key "answer_options", "options"
  add_foreign_key "customer_anamneses", "anamneses", column: "anamnesis_id"
  add_foreign_key "customer_anamneses", "customers"
  add_foreign_key "customers", "users"
  add_foreign_key "options", "questions"
  add_foreign_key "questions", "anamneses", column: "anamnesis_id"
  add_foreign_key "schedulings", "customers"
  add_foreign_key "schedulings", "users"
  add_foreign_key "service_schedulings", "schedulings"
  add_foreign_key "service_schedulings", "services"
  add_foreign_key "services", "users"
  add_foreign_key "sessions", "users"
end
