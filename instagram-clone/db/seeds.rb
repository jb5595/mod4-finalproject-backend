# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Relationship.destroy_all
Comment.destroy_all
Like.destroy_all

# user1 = User.create(
#   first_name: "Jake",
#   user_name: "jb5595",
#   last_name: "Berman",
#   bio: "This is my Bio",
#   profile_picture: "data:image/jpeg;base64,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",
#   thumbnail: "")

  # post1 = Post.new(image: "https://images.unsplash.com/photo-1541585485705-933a0f48b48d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6449430383ce9c6be4c80f24e4b2dbdd&auto=format&fit=crop&w=500&q=60")
  # post2 = Post.new(image: "https://images.unsplash.com/photo-1541579017182-c42e55fed3db?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7947128148a3895fa01cc6fd3c6b7c68&auto=format&fit=crop&w=500&q=60")
  # post3 = Post.new(image: "https://images.unsplash.com/photo-1541550353839-95e417a9f95b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=110a9c9715f97776ddf7df1365c44c80&auto=format&fit=crop&w=500&q=60")
  # post4 = Post.new(image: "https://images.unsplash.com/photo-1541560962515-a132503ff969?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b1cd9f9f149964b59a269ea32da0c5fd&auto=format&fit=crop&w=500&q=60")
  #
  # user1.posts <<[post1,post2,post3,post4]
