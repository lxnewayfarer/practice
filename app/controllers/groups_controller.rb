class GroupsController < ApplicationController
  before_action :set_group, only: [:show]
  # GET /groups
  # GET /groups.json
  def index
    @q = Group.ransack(params[:q])
    @groups = @q.result.includes(:countries).page(params[:page])
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @albums = @group.albums
  end


    def set_group
      @group = Group.find(params[:id])
    end
end
