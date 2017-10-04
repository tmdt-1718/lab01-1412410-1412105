class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos, id: false do |t|
      t.integer :photo_id, id: true, primary_key: true
      t.string :photo_name
      t.integer :view
      t.integer :like
      t.timestamps
    end
  end
end
