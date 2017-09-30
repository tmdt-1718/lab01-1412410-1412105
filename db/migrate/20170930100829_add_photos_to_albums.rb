class AddPhotosToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums,:photo_id,:integer
    add_foreign_key :albums, :photos, column: :photo_id, primary_key: "photo_id"
  end
end
