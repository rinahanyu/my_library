class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.integer :library_id, null: false
      t.integer :genre_id, null: false
      t.string :title, null: false
      t.string :title_kana, null: false
      t.string :author, null: false
      t.string :publisher, null: false
      t.date :published_on, null: false
      t.integer :book_image
      t.integer :status, default: 0, null: false, limit: 1

      t.timestamps
    end
  end
end
