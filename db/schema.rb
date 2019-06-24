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


ActiveRecord::Schema.define(version: 2019_06_24_132319) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_reviewed_id"
    t.bigint "review_giver_id"
    t.index ["review_giver_id"], name: "index_reviews_on_review_giver_id"
    t.index ["user_reviewed_id"], name: "index_reviews_on_user_reviewed_id"
  end

  create_table "socks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "color"
    t.string "pattern"
    t.integer "min_size"
    t.integer "max_size"
    t.string "sock_type"
    t.string "brand"
    t.string "season"
    t.integer "age"
    t.float "price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "bought", default: false
    t.index ["user_id"], name: "index_socks_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "transaction_type"
    t.bigint "user_id"
    t.bigint "sock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sock_id"], name: "index_transactions_on_sock_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "rating"
    t.string "location"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "socks", "users"
  add_foreign_key "transactions", "socks"
  add_foreign_key "transactions", "users"
end
