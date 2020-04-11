class AddCoverToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :cover, :string
  end
end
