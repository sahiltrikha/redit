class Vote < ActiveRecord::Base
  validates :vote, :user, :story, presence: true
  belongs_to :user
  belongs_to :story
end