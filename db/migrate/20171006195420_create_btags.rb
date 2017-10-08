class CreateBtags < ActiveRecord::Migration[5.1]
  def change
    create_table :btags do |t|
        t.integer :album_id
        t.integer :tag_id
      t.timestamps
    end
    rename_column :btags, :id, :btag_id
  end
end
