class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content

      t.integer :user_id, index: true
      t.integer :topic_id, index: true
      t.integer :theme_id, index: true
      t.boolean :delta, default: true
      t.timestamps null: false
    end
  end
end
