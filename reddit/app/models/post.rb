class Post < ApplicationRecord
  validates :title, presence: true
  validates :subs, presence: true
    
  belongs_to :author, 
    foreign_key: :user_id, 
    class_name: :User
  
  has_many :post_subs
  has_many :subs, through: :post_subs
  has_many :comments 
  
end
