class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :link
      t.text :title
      t.datetime :published_at
      t.integer :likes
      t.integer :dislikes
      t.text :uid

      t.timestamps null: false
    end
    add_index :videos, :uid
  end
end
