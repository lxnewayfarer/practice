class GenresController < ApplicationController
  before_action :set_genre, only: [:show]
  # GET /genres
  # GET /genres.json
  def index
    @q = Genre.ransack(params[:q])
    @genres = @q.result.page(params[:page])
  end

  # GET /genres/1
  # GET /genres/1.json
  def show
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre
      @genre = Genre.find(params[:id])
    end

end
