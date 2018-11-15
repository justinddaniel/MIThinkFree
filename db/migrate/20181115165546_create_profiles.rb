class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :real_name
      t.string :alias
      t.string :birthday
      t.string :location
      t.string :bio
    end
  end
end
