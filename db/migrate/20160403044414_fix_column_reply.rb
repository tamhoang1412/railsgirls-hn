class FixColumnReply < ActiveRecord::Migration
  def change
    rename_column :replies, :reply_id, :comment_id
  end
end
