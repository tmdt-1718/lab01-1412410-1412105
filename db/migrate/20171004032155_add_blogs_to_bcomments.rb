class AddBlogsToBcomments < ActiveRecord::Migration[5.1]
  def change
    add_column :bcomments,:blog_id,:integer
    add_foreign_key :bcomments, :blogs, column: :blog_id, primary_key: "blog_id"
    rename_column :bcomments, :blog_id, :destination 
  end
end
