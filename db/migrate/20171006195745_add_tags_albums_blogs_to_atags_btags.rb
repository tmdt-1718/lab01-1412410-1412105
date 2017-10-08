class AddTagsAlbumsBlogsToAtagsBtags < ActiveRecord::Migration[5.1]
  def change
    rename_column :btags, :album_id, :blog_id
    add_foreign_key :atags, :tags, column: :tag_id, primary_key: "tag_id"
    add_foreign_key :atags, :albums, column: :album_id, primary_key: "album_id"
    add_foreign_key :btags, :tags, column: :tag_id, primary_key: "tag_id"
    add_foreign_key :btags, :blogs, column: :blog_id, primary_key: "blog_id"
  end
end
