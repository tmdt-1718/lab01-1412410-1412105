class ChangeObject02 < ActiveRecord::Migration[5.1]
  def change
    remove_column :albums, :tag_id
    remove_column :blogs, :tag_id
    remove_column :users, :cover
    remove_column :albums, :cover
  end
end
