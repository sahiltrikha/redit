require 'open-uri'


class StoriesController < ApplicationController

  def index 
    @stories = Story.all
  end 

  def new
    @story = Story.new
    render(:new)
  end

  def create
    @story = Story.new(story_params)
    @story.title = html_title
    @story.user_id = current_user

    if @story.save 
      redirect_to user_stories_path(current_user)
    else
      render :new
    end
  end

  def show
    render(:show)
  end


  private

  def story_params
    params.require(:story).permit(:link)
  end

  def html_title
    source_page = Nokogiri::HTML(open(params["story"]["link"]))
    return source_page.css('title')[0].text
  end

end