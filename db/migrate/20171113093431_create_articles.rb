class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :category_id
      t.integer :comment_id
      t.timestamp
    end
  end
end
