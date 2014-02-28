class Story < ActiveRecord::Base

  belongs_to :users
  has_many :users, through: :votes
  has_many :users, through: :comments

  validates :url, presence: true, uniqueness: true
  validates :title, presence: true

end