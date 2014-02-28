class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniqueness: true
  validates :password, presence: true


  has_many :stories
  has_many :comments
  has_many :votes
end