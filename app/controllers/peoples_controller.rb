class PeoplesController < ApplicationController
    def show
        @user = User.find(params[:id])
        @feeds = @user.feeds
        @feed = Feed.new
    end
end