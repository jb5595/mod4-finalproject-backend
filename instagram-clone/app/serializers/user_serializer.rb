class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :first_name, :last_name, :bio, :profile_picture
  has_many :posts
  has_many :followers
  has_many :following
  has_many :bookmarked_items
end
