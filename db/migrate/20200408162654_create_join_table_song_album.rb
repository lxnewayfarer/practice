class CreateJoinTableSongAlbum < ActiveRecord::Migration[6.0]
  def change
    create_join_table :songs, :albums do |t|
      t.index [:song_id, :album_id]
      # t.index [:album_id, :song_id]
    end
  end
end
