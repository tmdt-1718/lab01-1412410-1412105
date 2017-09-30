class AddUsersToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments,:user_id,:integer
    add_foreign_key :comments, :users, column: :user_id, primary_key: "user_id"
  end
end
