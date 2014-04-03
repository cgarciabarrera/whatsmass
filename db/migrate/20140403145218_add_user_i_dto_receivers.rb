class AddUserIDtoReceivers < ActiveRecord::Migration
  def change
    add_column :receivers, :user_id, :integer
  end
end
