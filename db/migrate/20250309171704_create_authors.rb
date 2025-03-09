class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :last_name
      t.string :first_nameL
      t.date :birth_day

      t.timestamps
    end
  end
end
