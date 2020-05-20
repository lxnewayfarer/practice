class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
    if params[:album]
      @album = Album.find(params[:album])
      @songs = @album.songs
    else
      @songs = Song.all
    end
    
    
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end


end
