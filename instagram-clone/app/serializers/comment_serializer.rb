class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :user_name
  belongs_to :user
  belongs_to :post
end
