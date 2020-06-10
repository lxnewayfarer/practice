class ChangeNameToString < ActiveRecord::Migration[6.0]
  def change
    change_column :issues, :user_id, :string
  end
end
