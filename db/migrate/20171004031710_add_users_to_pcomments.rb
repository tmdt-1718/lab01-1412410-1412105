class AddUsersToPcomments < ActiveRecord::Migration[5.1]
  def change
    add_column :pcomments,:user_id,:integer
    add_foreign_key :pcomments, :users, column: :user_id, primary_key: "user_id"
    rename_column :pcomments, :user_id, :author
  end
end
