class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :release
      t.string :group_id

      t.timestamps
    end
  end
end
