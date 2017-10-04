class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags, id: false do |t|
      t.integer :tag_id, id: true, primary_key: true
      t.string :tag_name, unique: true
      t.timestamps
    end
  end
end
