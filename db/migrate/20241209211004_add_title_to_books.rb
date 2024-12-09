class AddTitleToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :title, :string
  end
end
