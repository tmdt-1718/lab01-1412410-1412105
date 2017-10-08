class CreateAtags < ActiveRecord::Migration[5.1]
  def change
    create_table :atags do |t|
        t.integer :album_id
        t.integer :tag_id
      t.timestamps
    end
    rename_column :atags, :id, :atag_id
  end
end
