class GoodsController < ApplicationController
  before_action :set_good, only: [:show]
  # GET /groups
  # GET /groups.json
  def index
    @q = Good.ransack(params[:q])
    @goods = @q.result.page(params[:page])
  end
  

  # GET /groups/1
  # GET /groups/1.json
  def show
  end


    def set_good
      @good = Good.find(params[:id])
    end
end
