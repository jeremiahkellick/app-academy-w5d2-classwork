class Sub < ApplicationRecord
  validates :title, presence: true, uniqueness: true 
  
  belongs_to :moderator, 
    foreign_key: :user_id, 
    class_name: :User 
    
  has_many :post_subs
  
  has_many :posts, 
    through: :post_subs, 
    source: :post
end
