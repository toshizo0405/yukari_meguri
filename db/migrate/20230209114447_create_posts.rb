class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.text :title
      t.string :country, :default => '日本'
      t.string :prefectues, :default => '東京'
      t.string :area
      t.text :access
      t.text :nearby_information
      t.text :go_around
      t.text :impressions

      t.timestamps
    end
  end
end
