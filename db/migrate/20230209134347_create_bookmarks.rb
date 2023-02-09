class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      
      t.integer :numeral

      t.timestamps
    end
  end
end
