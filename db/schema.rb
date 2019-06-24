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

ActiveRecord::Schema.define(version: 2019_06_23_143133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "socks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "color"
    t.string "pattern"
    t.integer "min_size"
    t.integer "max_size"
<<<<<<< HEAD
    t.string "type"
=======
    t.string "sock_type"
>>>>>>> 9506b0596a13145d1d231e21b71f9beff271bcf1
    t.string "brand"
    t.string "season"
    t.integer "age"
    t.float "price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_socks_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
<<<<<<< HEAD
    t.string "type"
=======
    t.string "transaction_type"
>>>>>>> 9506b0596a13145d1d231e21b71f9beff271bcf1
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reviews", "users"
  add_foreign_key "socks", "users"
  add_foreign_key "transactions", "socks"
  add_foreign_key "transactions", "users"
end
