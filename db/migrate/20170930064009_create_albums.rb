class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :album_name
      t.text :description
      t.timestamps
    end
    rename_column :albums, :id, :album_id
  end
end
