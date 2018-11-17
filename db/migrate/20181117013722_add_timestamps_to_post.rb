class AddTimestampsToPost < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :posts, default: DateTime.now
    change_column_default :posts, :created_at, nil
    change_column_default :posts, :updated_at, nil
  end
end
