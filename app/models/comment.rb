class Comment < ActiveRecord::Base
  validates :comment, :user, :story, presence: true
  belongs_to :user
  belongs_to :story
end
