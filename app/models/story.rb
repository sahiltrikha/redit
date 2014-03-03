class Story < ActiveRecord::Base
  validates :link, presence: true
  validates :link, uniqueness: true

  has_many :comments
  has_many :votes 
  belongs_to :user

  def story_score(story)
    story_score = 0
    story.votes.each do |vote|
      story_score = story_score + vote.vote
    end
    return story_score
  end
end