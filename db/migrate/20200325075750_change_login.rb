class ChangeLogin < ActiveRecord::Migration[6.0]
  def change
    execute('DELETE FROM users');
    add_index :users, :login,                unique: true
  end
end
