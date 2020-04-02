class HomeController < ApplicationController
  def index    
    if current_user
      @login = current_user.login
    end

      @vertical = 10
      @subjects = []
      @genres = Genre.all
      @genres.each do |g|
        @subjects.push(g)
      end
      @countries = Country.all
      @countries.each do |g|
        @subjects.push(g)
      end
      @groups = Group.all
      @groups.each do |g|
        @subjects.push(g)
      end
     
 end
end
