class PostSerializer < ActiveModel::Serializer
  attributes :id, :image, :location
  belongs_to :user
  has_many :comments
  has_many :likes
end
