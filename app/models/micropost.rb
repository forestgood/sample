class Micropost < ActiveRecord::Base
  attr_accessible :content, :title, :tech_content
  belongs_to :user

  validates :content, presence: true
  validates :title, presence: true
  validates :tech_content, presence: true
  validates :user_id, presence: true
  
  default_scope order: 'microposts.created_at DESC'
end
