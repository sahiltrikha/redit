class Story < ActiveRecord::Base
  validates :link, :presence true, :uniqueness true

  has_many :comments
  has_many :votes 
end