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

ActiveRecord::Schema[7.0].define(version: 2023_01_04_055338) do
  create_table "comments", force: :cascade do |t|
    t.integer "product_id", null: false
    t.text "comment_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_comments_on_product_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "product_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.text "product_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_type_id", null: false
    t.index ["product_type_id"], name: "index_products_on_product_type_id"
  end

  add_foreign_key "comments", "products"
  add_foreign_key "products", "product_types"
end
