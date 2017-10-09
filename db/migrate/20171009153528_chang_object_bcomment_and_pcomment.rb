class ChangObjectBcommentAndPcomment < ActiveRecord::Migration[5.1]
  def change
    drop_column :albums, :tag_id
    drop_column :blogs, :tag_id
    drop_column :users, :cover
  end
end
