class CreateJoinTableGenreAlbum < ActiveRecord::Migration[6.0]
  def change
    create_join_table :genres, :albums do |t|
      # t.index [:genre_id, :album_id]
      t.index [:album_id, :genre_id]
    end
  end
end
