class AddUsersToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos,:user_id,:integer
    add_foreign_key :photos, :users, column: :user_id, primary_key: "user_id"
  end
end
