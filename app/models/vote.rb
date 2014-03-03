class Vote < ActiveRecord::Base
  validates :vote, :user, :story, presence: true
  validates :story, uniqueness: {scope: :user}
  belongs_to :user
  belongs_to :story
end