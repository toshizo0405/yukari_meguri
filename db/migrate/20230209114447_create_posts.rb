class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :member_id
      t.text :title
      t.string :prefectues
      t.string :area
      t.text :access
      t.text :nearby_information
      t.text :go_around
      t.text :impressions

      t.timestamps
    end
  end
end
