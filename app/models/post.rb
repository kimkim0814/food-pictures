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

  def self.sort(selection)
    case selection
    when 'new'
      return all.order(created_at: :DESC)
    when 'old'
      return all.order(created_at: :ASC)
    when 'likes'
      return find(Favorite.group(:post_id).order(Arel.sql('count(post_id) desc')).pluck(:post_id))
    when 'dislikes'
      return find(Favorite.group(:post_id).order(Arel.sql('count(post_id) asc')).pluck(:post_id))
    end
  end
end
