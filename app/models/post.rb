class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  belongs_to :user
  has_many :likes
  has_many :comments
  # has_one_attached :image
end
