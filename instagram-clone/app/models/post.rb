class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  mount_uploader :image, ImageUploader


  def self.explore_feed
    sorted  = Post.all.sort{|a,b| b.created_at <=> a.created_at}
  end

end
