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

ActiveRecord::Schema.define(version: 2019_12_19_191659) do

  create_table "attendances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "total"
    t.string "status"
    t.string "cartao"
    t.bigint "customer_id"
    t.bigint "barber_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["barber_id"], name: "index_attendances_on_barber_id"
    t.index ["customer_id"], name: "index_attendances_on_customer_id"
  end

  create_table "barbers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "cpf"
    t.date "data_nascimento"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "cpf"
    t.date "data_nascimento"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_attendances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "attendance_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attendance_id"], name: "index_service_attendances_on_attendance_id"
    t.index ["service_id"], name: "index_service_attendances_on_service_id"
  end

  create_table "services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "corte"
    t.string "descricao"
    t.float "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attendances", "barbers"
  add_foreign_key "attendances", "customers"
  add_foreign_key "service_attendances", "attendances"
  add_foreign_key "service_attendances", "services"
end
