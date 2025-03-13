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

ActiveRecord::Schema[8.0].define(version: 2025_03_13_141210) do
  create_table "authors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "last_name"
    t.string "first_nameL"
    t.date "birth_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.string "isbn"
    t.string "publisher"
    t.date "pub_date"
    t.text "cover", size: :medium
    t.decimal "price", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_authors_books", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "author_id", null: false
    t.bigint "book_id", null: false
    t.index ["author_id", "book_id"], name: "index_table_authors_books_on_author_id_and_book_id", unique: true
    t.index ["author_id"], name: "index_table_authors_books_on_author_id"
    t.index ["book_id"], name: "index_table_authors_books_on_book_id"
  end

  add_foreign_key "table_authors_books", "authors"
  add_foreign_key "table_authors_books", "books"
end
