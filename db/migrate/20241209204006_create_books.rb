class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :author
      t.integer :year
      t.string :genre
      t.text :summary

      t.timestamps
    end
  end
end
