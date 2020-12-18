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

ActiveRecord::Schema.define(version: 2020_12_18_171731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "snippets", force: :cascade do |t|
    t.text "trigger"
    t.text "replacement"
    t.boolean "is_form"
    t.boolean "is_public"
    t.text "tags"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["taggable_type", "taggable_id"], name: "index_snippets_on_taggable_type_and_taggable_id"
    t.index ["user_id"], name: "index_snippets_on_user_id"
  end

  create_table "snippets_lists", force: :cascade do |t|
    t.boolean "is_public"
    t.text "tags"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["taggable_type", "taggable_id"], name: "index_snippets_lists_on_taggable_type_and_taggable_id"
    t.index ["user_id"], name: "index_snippets_lists_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.text "slug"
    t.boolean "is_public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "taggable_type"
    t.bigint "taggable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.bigint "primary_snippets_list_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "snippets", "users"
  add_foreign_key "snippets_lists", "users"
end
