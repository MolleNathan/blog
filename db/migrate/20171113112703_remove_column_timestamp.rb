class RemoveColumnTimestamp < ActiveRecord::Migration[5.1]
  def change_table
    add_column :articles, :created_at, :datetime, null: false
    add_column :articles, :updated_at, :datetime, null: false

  end
end
