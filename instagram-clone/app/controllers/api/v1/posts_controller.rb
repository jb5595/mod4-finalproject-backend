class Api::V1::PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end

  def feed
    @user = User.find(params[:user_id])
    @feed = @user.feed
    render json: @feed , status: 200
  end

  def create
    byebug
    # @user = User.find(params[:user_id])
    # @post = @user.posts.build
    @post = Post.create(post_params)
    render json: @post, status: 200
  end

  def index
    @posts = Post.explore_feed
    render json: @posts, status: 200

  end

  private

  def post_params
    params.permit(
      :id,
      :image,
      :user_id,
      :caption,
    )
  end

end
