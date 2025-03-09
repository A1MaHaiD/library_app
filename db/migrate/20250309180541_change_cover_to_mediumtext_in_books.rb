class ChangeCoverToMediumtextInBooks < ActiveRecord::Migration[8.0]
  def change
    change_column :books, :cover,  :text, :limit => 16777215
  end
end
