class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :telphone_number, null: false
      t.string :postal_code, null:false
      t.string :address, null:false

      t.timestamps
    end
  end
end
