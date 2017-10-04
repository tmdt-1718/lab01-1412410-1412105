class CreatePcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :pcomments do |t|
      t.text :content
      t.timestamps
    end
    rename_column :pcomments, :id, :pcomment_id
  end
end
