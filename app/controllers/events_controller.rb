class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  # GET /groups
  # GET /groups.json
  def index
    @q = Event.ransack(params[:q])
    @events = @q.result.page(params[:page])
  end
  

  # GET /groups/1
  # GET /groups/1.json
  def show
    
  end


    def set_event
      @event = Event.find(params[:id])
    end
end
