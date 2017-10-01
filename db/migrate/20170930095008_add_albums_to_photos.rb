class AddAlbumsToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos,:album_id,:integer
    add_foreign_key :photos, :albums, column: :album_id, primary_key: "album_id"
  end
end
