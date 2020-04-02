class CreateJoinTableCountryGroup < ActiveRecord::Migration[6.0]
  def change
    create_join_table :countries, :groups do |t|
      # t.index [:country_id, :group_id]
       t.index [:group_id, :country_id]
    end
  end
end
