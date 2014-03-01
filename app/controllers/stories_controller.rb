class StoriesController < ApplicationController

  def index 
  end 

  def new
    @story = Story.new
    render(:new)
  end

  def create
    @story = Story.new(story_params)
    story.title = story_params
  end

  private

  def story_params
    params.require(:story).permit(:link)
  end


  def html_title
  end

end