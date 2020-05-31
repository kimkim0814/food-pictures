class Post < ApplicationRecord
  validates :image, presence: true
  belongs_to :user
  has_many :likes
end
