class Api::V1::PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.build
    @post.image = params[:image]
    @post.save!
    render json: @post, status: 200
  end

  private

  def post_params
    params.permit(
      :id,
      :image,
      :user_id,
    )
  end

end
