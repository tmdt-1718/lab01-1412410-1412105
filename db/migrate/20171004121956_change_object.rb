class ChangeObject < ActiveRecord::Migration[5.1]
  def change
  	rename_column :blogs, :author, :user_id 
  	rename_column :albums, :author, :user_id
  end
end
