class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  belongs_to :user
  has_many :likes
  has_many :comments

  def self.search(search)
    return Post.all unless search
    Post.where('name LIKE(?)', "%#{search}%")
  end
end
