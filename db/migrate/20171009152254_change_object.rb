class ChangeObject < ActiveRecord::Migration[5.1]
    def change
    	rename_column :blogs, :author, :user_id
      rename_column :albums, :tag, :tag_id
      rename_column :bcomments, :destination, :blog_id
      rename_column :bcomments, :author, :user_id
      rename_column :blogs, :tag, :tag_id
      rename_column :pcomments, :destination, :photo_id
      rename_column :pcomments, :author, :user_id
    	rename_column :photos, :album, :album_id
    end
  end
