class FeedsController < ApplicationController
    before_action :set_post, only: [:destroy]
    before_action :isuser
    def create
        feed = Feed.new user_id: current_user.id, text: params[:feed][:text]
        feed.save
        respond_to do |format|
            format.html { redirect_back fallback_location: { action: "show", id: current_user.id } }
        end 
    end

    def destroy
        @post.destroy
        respond_to do |format|
            format.html { redirect_back fallback_location: { action: "show", id: current_user.id } }
        end 
    end

    private

    def set_post
        @post = Feed.find(params[:id])
        if current_user
            if current_user.id == @post.user_id
            end
        else
            redirect_to root_path
        end
        
    end

    def isuser
        
    end
end
