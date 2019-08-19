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

ActiveRecord::Schema.define(version: 20190819155728) do

  create_table "authors", force: :cascade do |t|
    t.string "last_name", limit: 70
    t.string "first_name", limit: 70
    t.date "birth_date"
    t.string "country", limit: 100
    t.text "about"
    t.string "gender", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title", limit: 100
    t.string "description"
    t.date "publish_date"
    t.string "language", limit: 100
    t.string "isbn"
    t.integer "pages"
    t.decimal "price", precision: 7, scale: 2
    t.integer "publisher_id"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "country", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
