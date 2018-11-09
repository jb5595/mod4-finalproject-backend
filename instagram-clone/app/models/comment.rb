class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  def user_name
    self.user.user_name
  end
end
