class RenameBookImageColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :book_image, :book_image_id
  end
end
