class CreateLendings < ActiveRecord::Migration[5.0]
  def change
    create_table :lendings do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false
      t.integer :reservation_id
      t.date :lent_on, null: false
      t.date :return_date, null: false
      t.date :returned_on

      t.timestamps
    end
  end
end
