class AddNameToAdminUser < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :contacts, :string
    add_column :admin_users, :name, :text
  end
end
