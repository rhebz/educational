class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.integer :topic_id

      t.timestamps null: false
    end
    add_index :posts, :user_id
    add_index :posts, :topic_id
  end
end
