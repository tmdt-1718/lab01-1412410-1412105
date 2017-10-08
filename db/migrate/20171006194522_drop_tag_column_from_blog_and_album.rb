class DropTagColumnFromBlogAndAlbum < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :tag_id
    remove_column :albums, :tag_id
  end
end
