class CreateBcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :bcomments do |t|
      t.text :content
      t.timestamps
    end
    rename_column :bcomments, :id, :bcomment_id
  end
end
