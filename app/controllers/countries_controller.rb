class CountriesController < ApplicationController
  before_action :set_country, only: [:show]
  # GET /countries
  # GET /countries.json
  def index
    @q = Country.ransack(params[:q])
    @countries = @q.result.page(params[:page])
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

   
end
