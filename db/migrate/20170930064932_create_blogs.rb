class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :view
      t.integer :useful
      t.timestamps
    end
    rename_column :blogs, :id, :blog_id
  end
end
