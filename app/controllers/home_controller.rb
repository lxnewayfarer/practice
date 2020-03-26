class HomeController < ApplicationController
  def index    
    if current_user
      @login = current_user.login
   # else
   #   redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
 end
end
