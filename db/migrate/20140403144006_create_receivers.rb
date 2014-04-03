class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :phone
      t.string :name
      t.boolean :active
      t.datetime :last_sent
      t.integer :sex

      t.timestamps
    end
  end
end
