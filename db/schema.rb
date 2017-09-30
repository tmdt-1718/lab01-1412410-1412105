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

ActiveRecord::Schema.define(version: 20170930105145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", primary_key: "album_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "album_name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "tag_id"
    t.integer "photo_id"
  end

  create_table "blogs", primary_key: "blog_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "view"
    t.integer "useful"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "photo_id"
    t.integer "tag_id"
  end

  create_table "comments", primary_key: "comment_id", id: :integer, default: nil, force: :cascade do |t|
    t.text "content"
    t.integer "type_des"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "album_id"
    t.integer "photo_id"
    t.integer "blog_id"
    t.integer "user_id"
  end

  create_table "photos", primary_key: "photo_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "photo_name"
    t.integer "view"
    t.integer "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "album_id"
  end

  create_table "tags", primary_key: "tag_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "user_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "albums", "photos", primary_key: "photo_id"
  add_foreign_key "albums", "tags", primary_key: "tag_id"
  add_foreign_key "albums", "users", primary_key: "user_id"
  add_foreign_key "blogs", "photos", primary_key: "photo_id"
  add_foreign_key "blogs", "tags", primary_key: "tag_id"
  add_foreign_key "blogs", "users", primary_key: "user_id"
  add_foreign_key "comments", "albums", primary_key: "album_id"
  add_foreign_key "comments", "blogs", primary_key: "blog_id"
  add_foreign_key "comments", "photos", primary_key: "photo_id"
  add_foreign_key "comments", "users", primary_key: "user_id"
  add_foreign_key "photos", "albums", primary_key: "album_id"
  add_foreign_key "photos", "users", primary_key: "user_id"
end
