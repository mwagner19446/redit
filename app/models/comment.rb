class Comment < ActiveRecord::Base

  belongs_to :users
  belongs_to :stories
  
  validates :comments_message, presence: true
  validates :stories_id, presence: true
  validates :users_id, presence: true
  validates :created_at, presence: true
  validates :updated_at, presence: true

end