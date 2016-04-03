class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :user_name
      t.text :body
      t.integer :reply_id
      t.string :picture

      t.timestamps null: false
    end
  end
end
