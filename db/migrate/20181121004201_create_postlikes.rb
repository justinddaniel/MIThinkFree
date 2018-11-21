class CreatePostlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :postlikes do |t|
      t.integer :user_id
      t.integer :post_id
    end
  end
end
