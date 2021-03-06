class User < ApplicationRecord
  mount_uploader :profile_picture, ProfilePicUploader

  has_many :posts
  has_many :comments, through: :posts

  has_many :bookmarked_posts
  has_many :bookmarked_items, through: :bookmarked_posts, :source => "post"
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
  # Auth
  has_secure_password
  #Validations
  validates :user_name, uniqueness: { case_sensitive: false }


  #follows users
  def follow(other_user)
     self.following << other_user
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

   def feed
     @posts = self.following.map{|user| user.posts}
     @posts.flatten
   end


end
