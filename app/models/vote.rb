class Vote < ActiveRecord::Base

  belongs_to :users
  belongs_to :stories
  
  validates :vote_value, presence: true
  validates :stories_id, presence: true
  validates :users_id, presence: true
  validates :users_id, uniqueness: { scope: :stories_id } 

end