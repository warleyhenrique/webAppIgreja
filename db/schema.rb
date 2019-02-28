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

ActiveRecord::Schema.define(version: 20180413160727) do

  create_table "addresses", force: :cascade do |t|
    t.string "cep"
    t.string "street"
    t.string "number"
    t.string "complement"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_addresses_on_member_id"
  end

  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.text "rmk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kinds", force: :cascade do |t|
    t.string "description"
    t.text "rmk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "full_name"
    t.string "father_name"
    t.string "monther_name"
    t.string "sex"
    t.date "birthday"
    t.date "baptism_date"
    t.string "place_of_birth"
    t.string "marital_status"
    t.string "email"
    t.string "schooling"
    t.string "profession"
    t.string "cpf"
    t.string "rg"
    t.string "rg_emitter"
    t.string "voters_title"
    t.string "photo"
    t.integer "kind_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kind_id"], name: "index_members_on_kind_id"
  end

  create_table "offices", force: :cascade do |t|
    t.integer "role_id"
    t.integer "departament_id"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departament_id"], name: "index_offices_on_departament_id"
    t.index ["member_id"], name: "index_offices_on_member_id"
    t.index ["role_id"], name: "index_offices_on_role_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "phone"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_phones_on_member_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
