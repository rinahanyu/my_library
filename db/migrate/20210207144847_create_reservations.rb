class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false
      t.date :lending_date, null: false
      t.date :return_date, null: false

      t.timestamps
    end
  end
end
