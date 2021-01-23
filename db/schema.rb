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

ActiveRecord::Schema.define(version: 2021_01_22_232529) do

  create_table "carts", force: :cascade do |t|
    t.integer "total"
    t.integer "quantity"
    t.string "active"
    t.string "boolean"
    t.integer "user_id", null: false
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_carts_on_menu_item_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "ingredients"
    t.string "image_url"
    t.integer "price"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total"
    t.integer "user_id", null: false
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_orders_on_menu_item_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_url"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "rating"
    t.integer "user_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "carts", "menu_items"
  add_foreign_key "carts", "users"
  add_foreign_key "menu_items", "restaurants"
  add_foreign_key "orders", "menu_items"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "restaurants"
  add_foreign_key "reviews", "users"
end
