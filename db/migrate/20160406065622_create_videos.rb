class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.string :title
    	t.text :description
    	t.integer :user_id
    	t.integer :views
    	t.integer :likes
    	t.string :video_link
    	t.string :thumbnail
    	t.integer :category_id
    	t.timestamps null: false
    end
  end
end
