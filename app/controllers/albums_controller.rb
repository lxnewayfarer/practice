class AlbumsController < ApplicationController
  before_action :set_album, only: [:show]

  # GET /albums
  # GET /albums.json
  def index
    @q = Album.ransack(params[:q])
    @albums = @q.result(distinct: true)
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    set_album
    @songs = @album.songs
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

end
