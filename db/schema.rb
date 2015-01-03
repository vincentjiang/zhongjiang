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

ActiveRecord::Schema.define(version: 20150103161254) do

  create_table "zj_categories", force: :cascade do |t|
    t.string   "name",        limit: 255,             null: false
    t.integer  "category_id", limit: 4,   default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "zj_categories", ["category_id"], name: "index_zj_categories_on_category_id", using: :btree

  create_table "zj_products", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.text     "desc",        limit: 65535
    t.string   "author",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "long_desc",   limit: 65535
    t.integer  "category_id", limit: 4,     null: false
  end

  create_table "zj_users", force: :cascade do |t|
    t.string   "name",            limit: 255,                 null: false
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255,                 null: false
    t.boolean  "admin",           limit: 1,   default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

end
