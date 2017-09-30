class CreateUsers < ActiveRecord::Migration[5.1]
  def change
      create_table :users, id: false do |t|
      t.integer :user_id, primary_key: true
      t.string :user_name, unique: true
      t.string :password
      t.string :email, unique: true
      t.timestamps
    end
  end
end
