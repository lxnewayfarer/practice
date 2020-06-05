class AddCoverToGoods < ActiveRecord::Migration[6.0]
  def change
    add_column :goods, :cover, :string
  end  
end
