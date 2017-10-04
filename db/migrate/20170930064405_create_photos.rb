class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :photo_name
      t.integer :view
      t.integer :like
      t.integer :user_id
      t.timestamps
    end
    rename_column :photos, :id, :photo_id
  end
end
