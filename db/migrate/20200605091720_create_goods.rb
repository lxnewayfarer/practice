class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :quantity
    end
  end
end
