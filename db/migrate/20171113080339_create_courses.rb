class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :forum_id

      t.timestamps null: false
    end
    add_index :courses, :user_id
    add_index :courses, :forum_id
  end
end
