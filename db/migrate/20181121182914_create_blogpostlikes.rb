class CreateBlogpostlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :blogpostlikes do |t|
      t.integer :blogpost_id
      t.integer :user_id 
    end
  end
end
