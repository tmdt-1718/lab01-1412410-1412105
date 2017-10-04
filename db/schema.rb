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

ActiveRecord::Schema.define(version: 20171004040137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", primary_key: "album_id", id: :bigint, default: -> { "nextval('albums_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "album_name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author"
    t.integer "cover"
    t.integer "tag"
  end

  create_table "bcomments", primary_key: "bcomment_id", id: :bigint, default: -> { "nextval('bcomments_id_seq'::regclass)" }, force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author"
    t.integer "destination"
  end

  create_table "blogs", primary_key: "blog_id", id: :bigint, default: -> { "nextval('blogs_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "view"
    t.integer "useful"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author"
    t.integer "tag"
  end

  create_table "pcomments", primary_key: "pcomment_id", id: :bigint, default: -> { "nextval('pcomments_id_seq'::regclass)" }, force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author"
    t.integer "destination"
  end

  create_table "photos", primary_key: "photo_id", id: :bigint, default: -> { "nextval('photos_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "photo_name"
    t.integer "view"
    t.integer "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "album"
  end

  create_table "tags", primary_key: "tag_id", id: :bigint, default: -> { "nextval('tags_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "user_id", id: :bigint, default: -> { "nextval('users_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "avatar"
  end

  add_foreign_key "albums", "photos", column: "cover", primary_key: "photo_id"
  add_foreign_key "albums", "tags", column: "tag", primary_key: "tag_id"
  add_foreign_key "albums", "users", column: "author", primary_key: "user_id"
  add_foreign_key "bcomments", "blogs", column: "destination", primary_key: "blog_id"
  add_foreign_key "bcomments", "users", column: "author", primary_key: "user_id"
  add_foreign_key "blogs", "tags", column: "tag", primary_key: "tag_id"
  add_foreign_key "blogs", "users", column: "author", primary_key: "user_id"
  add_foreign_key "pcomments", "photos", column: "destination", primary_key: "photo_id"
  add_foreign_key "pcomments", "users", column: "author", primary_key: "user_id"
  add_foreign_key "photos", "albums", column: "album", primary_key: "album_id"
  add_foreign_key "users", "photos", column: "avatar", primary_key: "photo_id"
end
