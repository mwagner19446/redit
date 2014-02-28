class StoriesController < ApplicationController

  def new
    @story = Story.new
    @user = User.find(session[:user_id])
  end 

  def create
    binding.pry
    @title = #TODO API CALL!!
    Story.new(url: params[:story][:url], title: @title)
  end 

  def show

  end 

private

  # def story_params
  #   params.require(:story).permit(:url)
  # end

end 