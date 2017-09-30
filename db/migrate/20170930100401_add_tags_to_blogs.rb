class AddTagsToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs,:tag_id,:integer
    add_foreign_key :blogs, :tags, column: :tag_id, primary_key: "tag_id"
  end
end
