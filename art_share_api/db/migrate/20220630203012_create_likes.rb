class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false 
      t.integer :likes_id, null: false 
      t.integer :artwork_id, null: false 
      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :likes_id
    add_index :likes, :artwork_id
    add_index :likes, [:artwork_id, :likes_id, :user_id], unique: true 
    add_index :likes, [:artwork_id, :likes_id]
  end
end
