class AddPhotosToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users,:photo_id,:integer
    add_foreign_key :users, :photos, column: :photo_id, primary_key: "photo_id"
    rename_column :users, :photo_id, :avatar
  end
end
