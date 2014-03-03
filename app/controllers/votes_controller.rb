class VotesController < ApplicationController
  def create 
    vote = Vote.new
    vote.story = Story.find_by(id: params["story_id"])
    vote.user = User.find_by(id: session["user_id"])
    if params["vote"] == "Up"
      vote.vote = 1
    elsif params["vote"] == "Down"
      vote.vote = -1
    end
    vote.save
    redirect_to root_path
  end 
end