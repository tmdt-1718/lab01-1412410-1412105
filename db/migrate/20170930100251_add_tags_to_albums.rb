class AddTagsToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums,:tag_id,:integer
    add_foreign_key :albums, :tags, column: :tag_id, primary_key: "tag_id"
  end
end
