class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :good_id
      t.string :user_id
      t.integer :quantity
      t.text :contacts

      t.timestamps
    end
  end
end
