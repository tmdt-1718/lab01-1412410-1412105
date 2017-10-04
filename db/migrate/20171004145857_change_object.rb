class ChangeObject < ActiveRecord::Migration[5.1]
  def change
    rename_column :albums, :cover, :photo_id
    rename_column :albums, :tag, :tag_id
    rename_column :bcomments, :author, :user_id
    rename_column :bcomments, :destination, :blog_id
    rename_column :pcomments, :author, :user_id
    rename_column :pcomments, :destination, :photo_id
    rename_column :blogs, :tag, :tag_id
    rename_column :users, :avatar, :photo_id

  end
end
