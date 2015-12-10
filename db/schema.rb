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

ActiveRecord::Schema.define(version: 20151210180848) do

  create_table "descontos", force: :cascade do |t|
    t.float    "porcentagem"
    t.integer  "users_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "descontos", ["users_id"], name: "index_descontos_on_users_id"

  create_table "geolocalizacaos", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "geolocalizacaos", ["users_id"], name: "index_geolocalizacaos_on_users_id"

  create_table "users", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.date     "data_nasc"
    t.string   "senha"
    t.integer  "evento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["evento_id"], name: "index_users_on_evento_id"

end
