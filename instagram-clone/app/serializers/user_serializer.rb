class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :first_name, :last_name, :bio, :profile_picture
  has_many :posts
end
