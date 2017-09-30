class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs, id: false do |t|
      t.integer :blog_id, id: true, primary_key: true
      t.string :title
      t.text :content
      t.integer :view
      t.integer :useful
      t.timestamps
    end
  end
end
