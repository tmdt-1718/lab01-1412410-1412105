class AddPhotosToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs,:photo_id,:integer
    add_foreign_key :blogs, :photos, column: :photo_id, primary_key: "photo_id"
  end
end
