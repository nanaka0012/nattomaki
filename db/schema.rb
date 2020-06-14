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

ActiveRecord::Schema.define(version: 2020_06_09_081215) do

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "novels", force: :cascade do |t|
    t.string "title", null: false
    t.integer "genre", null: false
    t.text "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "subtitle", null: false
    t.integer "novel_id"
    t.string "penname", null: false
    t.text "content", null: false
    t.text "comment"
    t.integer "user_id"
    t.integer "parent_story_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["novel_id"], name: "index_stories_on_novel_id"
    t.index ["parent_story_id"], name: "index_stories_on_parent_story_id"
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "story_id"
    t.integer "novel_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["novel_id"], name: "index_tags_on_novel_id"
    t.index ["story_id"], name: "index_tags_on_story_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
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

  add_foreign_key "stories", "novels"
  add_foreign_key "stories", "stories", column: "parent_story_id"
  add_foreign_key "stories", "users"
  add_foreign_key "tags", "novels"
  add_foreign_key "tags", "stories"
end
