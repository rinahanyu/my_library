class CreateRecommends < ActiveRecord::Migration[5.0]
  def change
    create_table :recommends do |t|
      t.integer :book_id, null: false
      t.integer :recommend_result, null: false, limit: 1
      t.string :comment

      t.timestamps
    end
  end
end
