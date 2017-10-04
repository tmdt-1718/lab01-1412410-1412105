class AddBlogsToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments,:blog_id,:integer
    add_foreign_key :comments, :blogs, column: :blog_id, primary_key: "blog_id"
  end
end
