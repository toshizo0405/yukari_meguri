class CreateTagMiddles < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_middles do |t|
      t.integer :tags_id
      t.integer :posts_id

      t.timestamps
    end
  end
end
