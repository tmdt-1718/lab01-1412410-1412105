class AddPhotosToPcomments < ActiveRecord::Migration[5.1]
  def change
    add_column :pcomments,:photo_id,:integer
    add_foreign_key :pcomments, :photos, column: :photo_id, primary_key: "photo_id"
    rename_column :pcomments, :photo_id, :destination
  end
end
