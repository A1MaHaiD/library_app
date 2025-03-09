class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :publisher
      t.date :pub_date
      t.text :cover
      t.decimal :price

      t.timestamps
    end
  end
end
