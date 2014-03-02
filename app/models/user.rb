class User < ActiveRecord::Base
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :password, presence: true


  has_many :stories
  has_many :comments
  has_many :votes

  has_secure_password
  
end