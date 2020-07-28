class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :name,  presence: true
  belongs_to :user
  has_many :post_category_relations,dependent: :destroy
  has_many :categories,through: :post_category_relations
  has_many :likes, dependent: :destroy
  has_many :comments
  has_one :spot, dependent: :destroy
  accepts_nested_attributes_for :spot
  def self.search(search)
    return Post.all unless search
    Post.where('name LIKE(?)', "%#{search}%")
  end
## ソート機能
  def self.sort(selection)
    case selection
    when 'new'
      return all.order(created_at: :DESC)
    when 'old'
      return all.order(created_at: :ASC)
    when 'likes'
      return find(Like.group(:post_id).order(Arel.sql('count(post_id) desc')).pluck(:post_id))
    end
  end
end
