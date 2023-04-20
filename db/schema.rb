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

ActiveRecord::Schema.define(version: 2023_04_12_070916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "prefectures", force: :cascade do |t|
    t.integer "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rice", force: :cascade do |t|
    t.string "name", null: false
    t.string "characteristic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rice_favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "rice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rice_id"], name: "index_rice_favorites_on_rice_id"
    t.index ["user_id"], name: "index_rice_favorites_on_user_id"
  end

  create_table "rice_prefectures", force: :cascade do |t|
    t.bigint "rice_id", null: false
    t.bigint "prefecture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prefecture_id"], name: "index_rice_prefectures_on_prefecture_id"
    t.index ["rice_id"], name: "index_rice_prefectures_on_rice_id"
  end

  create_table "rice_statuses", force: :cascade do |t|
    t.bigint "rice_id", null: false
    t.integer "hardness"
    t.integer "softness"
    t.integer "sweetness"
    t.integer "freshness"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rice_id"], name: "index_rice_statuses_on_rice_id", unique: true
  end

  create_table "user_rankings", force: :cascade do |t|
    t.integer "rank", null: false
    t.bigint "user_id", null: false
    t.bigint "rice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rank", "user_id", "rice_id"], name: "index_user_rankings_on_rank_and_user_id_and_rice_id", unique: true
    t.index ["rank", "user_id"], name: "index_user_rankings_on_rank_and_user_id", unique: true
    t.index ["rice_id"], name: "index_user_rankings_on_rice_id"
    t.index ["user_id", "rice_id"], name: "index_user_rankings_on_user_id_and_rice_id", unique: true
    t.index ["user_id"], name: "index_user_rankings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", null: false
    t.integer "role", default: 0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "rice_favorites", "rice"
  add_foreign_key "rice_favorites", "users"
  add_foreign_key "rice_prefectures", "prefectures"
  add_foreign_key "rice_prefectures", "rice"
  add_foreign_key "rice_statuses", "rice"
  add_foreign_key "user_rankings", "rice"
  add_foreign_key "user_rankings", "users"
end
