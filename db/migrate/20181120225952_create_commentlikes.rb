class CreateCommentlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :commentlikes do |t|
      t.integer :comment_id
      t.integer :user_id
    end
  end
end
