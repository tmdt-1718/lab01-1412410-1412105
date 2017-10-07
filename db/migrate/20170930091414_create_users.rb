class CreateUsers < ActiveRecord::Migration[5.1]
  def change
      create_table :users do |t|
      t.string :user_name, unique: true
      t.string :password
      t.string :email, unique: true
      t.string :cover
      t.timestamps
    end
    rename_column :users, :id, :user_id
  end
end
