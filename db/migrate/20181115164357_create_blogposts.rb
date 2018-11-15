class CreateBlogposts < ActiveRecord::Migration[5.2]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.timestamps
    end
  end
end
