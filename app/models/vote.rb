class Vote < ActiveRecord::Base
  validates :vote, presence: true
  belongs_to :user
  belongs_to :story
end