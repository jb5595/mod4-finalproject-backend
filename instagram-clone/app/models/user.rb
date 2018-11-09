class User < ApplicationRecord
  has_many :posts
  has_many :comments, through: :posts
  # Liked Posts Relationships
  has_many :likes
  has_many :liked_posts, through: :likes, :source => "posts"
  # Creates following assocation
  has_many :active_relationships, class_name:  "Relationship",
                                 foreign_key: "follower_id",
                                 dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                  foreign_key: "followed_id",
                                  dependent:   :destroy
  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower


  #follows users
  def follow(other_user)
     self.following << other_user
     other_user.followers << self
   end

   # Unfollows a user.
   def unfollow(other_user)
     self.following.delete(other_user)
     other_user.followers.delete(self)
   end
   # Returns true if the current user is following the other user.
   def following?(other_user)
     self.following.include?(other_user)
   end


end
