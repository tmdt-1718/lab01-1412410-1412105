class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :tag_name, unique: true
      t.timestamps
    end
    rename_column :tags, :id, :tag_id
  end
end
