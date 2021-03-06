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

ActiveRecord::Schema.define(version: 20170224133130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "garagistes", force: :cascade do |t|
    t.string   "name"
    t.string   "ville"
    t.string   "adresse"
    t.integer  "code_postal"
    t.string   "categorie"
    t.decimal  "taux_mo"
    t.decimal  "taux_piece"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quotations", force: :cascade do |t|
    t.integer  "price"
    t.integer  "garagiste_id"
    t.integer  "search_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["garagiste_id"], name: "index_quotations_on_garagiste_id", using: :btree
    t.index ["search_id"], name: "index_quotations_on_search_id", using: :btree
  end

  create_table "searches", force: :cascade do |t|
    t.string   "name"
    t.string   "ville"
    t.integer  "code_postal"
    t.string   "categorie"
    t.string   "description"
    t.string   "intervention"
    t.string   "immatriculation"
    t.integer  "price"
    t.integer  "garagiste_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["garagiste_id"], name: "index_searches_on_garagiste_id", using: :btree
  end

  create_table "villes", force: :cascade do |t|
    t.string   "name"
    t.integer  "code_postal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "quotations", "garagistes"
  add_foreign_key "quotations", "searches"
  add_foreign_key "searches", "garagistes"
end
