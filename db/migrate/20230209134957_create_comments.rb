class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      
      t.text :comment_field

      t.timestamps
    end
  end
end
