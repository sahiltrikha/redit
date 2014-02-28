class Story < ActiveRecord::Base
  validates :link, presence: true
  validates :link, uniqueness: true

  has_many :comments
  has_many :votes 
end