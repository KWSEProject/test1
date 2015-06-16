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

ActiveRecord::Schema.define(version: 20150615040237) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "qna_id"
    t.string   "name"
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id"

  create_table "numbers", force: :cascade do |t|
    t.string   "name"
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "pay_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pants", force: :cascade do |t|
    t.string   "main_title"
    t.text     "description"
    t.decimal  "stock"
    t.string   "main_image_url"
    t.string   "image_url1"
    t.string   "size"
    t.string   "color"
    t.decimal  "buy_count"
    t.decimal  "product_id"
    t.decimal  "price",          precision: 8, scale: 2
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",                  precision: 8, scale: 2
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.decimal  "BuyCount"
    t.string   "image_url2",  limit: 50
    t.decimal  "product_id"
    t.string   "type",        limit: 10
    t.string   "close_type",  limit: 10
    t.string   "close_type2", limit: 10
  end

  create_table "qnas", force: :cascade do |t|
    t.string   "name"
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tops", force: :cascade do |t|
    t.string   "main_title"
    t.text     "description"
    t.decimal  "stock"
    t.string   "main_image_url"
    t.string   "image_url1"
    t.string   "image_url2"
    t.string   "image_url3"
    t.string   "image_url4"
    t.string   "image_url5"
    t.decimal  "price",                    precision: 8, scale: 2
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "size1",          limit: 7
    t.string   "size2",          limit: 7
    t.string   "color1",         limit: 7
    t.string   "color2",         limit: 7
    t.decimal  "buy_count"
    t.decimal  "product_id"
    t.decimal  "stock1"
    t.decimal  "stock2"
    t.decimal  "stock33"
    t.decimal  "stock4"
    t.decimal  "stock5"
    t.decimal  "stock6"
    t.string   "size3",          limit: 7
    t.string   "size4",          limit: 7
    t.string   "size5",          limit: 7
    t.string   "size6",          limit: 7
    t.decimal  "stock3"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.date     "address"
    t.string   "phone_number",    limit: 15
    t.string   "address1",        limit: 80
    t.date     "birth_date"
    t.string   "e_mail",          limit: 50
    t.integer  "gender"
    t.integer  "rank"
  end

end
