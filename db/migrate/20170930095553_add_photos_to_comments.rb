class AddPhotosToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments,:photo_id,:integer
    add_foreign_key :comments, :photos, column: :photo_id, primary_key: "photo_id"
  end
end
