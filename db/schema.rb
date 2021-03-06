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

ActiveRecord::Schema.define(version: 20150427192713) do

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "category_id", limit: 4
    t.integer "product_id",  limit: 4
  end

  add_index "categories_products", ["category_id"], name: "index_categories_products_on_category_id", using: :btree
  add_index "categories_products", ["product_id"], name: "index_categories_products_on_product_id", using: :btree

  create_table "operators", force: :cascade do |t|
    t.string  "name",      limit: 255
    t.string  "email",     limit: 255
    t.integer "sector_id", limit: 4
    t.string  "password",  limit: 255
  end

  create_table "products", force: :cascade do |t|
    t.string "name",      limit: 255
    t.string "url_image", limit: 255
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name", limit: 255
  end

end
