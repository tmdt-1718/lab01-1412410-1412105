class ChangeObject02 < ActiveRecord::Migration[5.1]
  def change
    drop_column :albums, :tag_id
    drop_column :blogs, :tag_id
    drop_column :users, :cover
    drop_column :albums, :cover
  end
end
