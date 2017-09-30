class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments, id: false do |t|
      t.integer :comment_id, id: true, primary_key: true
      t.text :content
      t.integer :type_des
      t.timestamps
    end
  end
end
