class RemoveEmailFromLibrarians < ActiveRecord::Migration[5.2]
  def change
    remove_column :librarians, :email, :string
  end
end
