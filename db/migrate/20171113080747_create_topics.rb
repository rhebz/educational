class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.integer :forum_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :topics, :forum_id
    add_index :topics, :user_id
  end
end
