class CreateTableAuthorsBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :table_authors_books do |t|
      t.references :author, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.index [ :author_id, :book_id ], unique: true
    end

    remove_column :table_authors_books, :id
  end
end
