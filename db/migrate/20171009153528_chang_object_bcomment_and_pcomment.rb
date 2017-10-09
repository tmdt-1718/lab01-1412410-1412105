class ChangObjectBcommentAndPcomment < ActiveRecord::Migration[5.1]
  def change
    rename_column :bcomments, :destination, :blog_id
    rename_column :bcomments, :author, :user_id
    rename_column :pcomments, :destination, :photo_id
    rename_column :pcomments, :author, :user_id
    drop_column :albums, :tag
    rename_column :photos, :album, :album_id
    drop_column :blogs, :tag
    drop_column :users, :cover
  end
end
