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

ActiveRecord::Schema.define(version: 20131204133411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_histories", force: true do |t|
    t.datetime "date"
    t.integer  "price"
    t.integer  "count"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_histories", ["product_id"], name: "index_product_histories_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "sku_id"
    t.integer  "manufacturer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["manufacturer_id"], name: "index_products_on_manufacturer_id", using: :btree

  add_foreign_key "product_histories", "products", name: "product_histories_product_id_fk"

  add_foreign_key "products", "manufacturers", name: "products_manufacturer_id_fk"

end
