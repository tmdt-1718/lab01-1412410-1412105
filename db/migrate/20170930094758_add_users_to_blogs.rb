class AddUsersToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs,:user_id,:integer
    add_foreign_key :blogs, :users, column: :user_id, primary_key: "user_id"
  end
end
