class User < ActiveRecord::Base

  has_many :stories
  has_many :stories, through: :votes
  has_many :stories, through: :comments

  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :created_at, presence: true
  validates :updated_at, presence: true

end