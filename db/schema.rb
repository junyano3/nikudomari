# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_06_27_032902) do

  create_table "cuts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "cut_name", null: false
    t.integer "yield", null: false
    t.integer "high_portion", null: false
    t.integer "good_portion", null: false
    t.integer "normal_portion", null: false
    t.integer "bad_portion", null: false
    t.integer "minced_portion", null: false
    t.integer "loss_portion", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "selling_price_id", null: false
    t.bigint "user_id", null: false
    t.index ["selling_price_id"], name: "index_cuts_on_selling_price_id"
    t.index ["user_id"], name: "index_cuts_on_user_id"
  end

  create_table "selling_prices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "product_name", default: "", null: false
    t.integer "high_portion", null: false
    t.integer "good_portion", null: false
    t.integer "normal_portion", null: false
    t.integer "bad_portion", null: false
    t.integer "minced_portion", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "store_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cuts", "selling_prices"
  add_foreign_key "cuts", "users"
end
