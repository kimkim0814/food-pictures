class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :posts
   has_many :likes
   has_many :comments
   def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
end
