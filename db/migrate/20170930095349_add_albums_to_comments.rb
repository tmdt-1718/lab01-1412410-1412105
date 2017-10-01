class AddAlbumsToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments,:album_id,:integer
    add_foreign_key :comments, :albums, column: :album_id, primary_key: "album_id"
  end
end
