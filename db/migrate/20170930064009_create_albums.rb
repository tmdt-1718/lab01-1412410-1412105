class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums, id: false do |t|
      t.integer :album_id, id: true, primary_key: true
      t.string :album_name
      t.text :description
      t.timestamps
    end
  end
end
