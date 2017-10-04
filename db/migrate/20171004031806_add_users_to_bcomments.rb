class AddUsersToBcomments < ActiveRecord::Migration[5.1]
  def change
    add_column :bcomments,:user_id,:integer
    add_foreign_key :bcomments, :users, column: :user_id, primary_key: "user_id"
    rename_column :bcomments, :user_id, :author 
  end
end
