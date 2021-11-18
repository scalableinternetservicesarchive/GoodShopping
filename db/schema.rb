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

ActiveRecord::Schema.define(version: 2021_11_12_055112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.bigint "shopper_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_carts_on_product_id"
    t.index ["shopper_id"], name: "index_carts_on_shopper_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.bigint "manufacturer_id", null: false
    t.float "price"
    t.integer "number_in_stock"
    t.float "average_rating"
    t.text "description"
    t.text "product_information"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.binary "img"
    t.index ["manufacturer_id"], name: "index_products_on_manufacturer_id"
  end

  create_table "shoppers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "telephone"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "carts", "products"
  add_foreign_key "carts", "shoppers"
  add_foreign_key "products", "manufacturers"
end
