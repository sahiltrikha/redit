class StoriesController < ApplicationController

  def index 
  end 

  def new
    @story = Story.new
    render(:new)
  end

  def create
    @story = Story.new(story_params)
    story.title = html_title
    story.user = current_user
  end

  private

  def story_params
    params.require(:story).permit(:link)
  end


  def html_title
    #
  end

end