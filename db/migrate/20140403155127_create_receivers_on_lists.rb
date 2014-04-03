class CreateReceiversOnLists < ActiveRecord::Migration
  def change
    create_table :receivers_on_lists do |t|

      t.integer :receiver_id
      t.integer :list_id

      t.timestamps
    end
  end
end
