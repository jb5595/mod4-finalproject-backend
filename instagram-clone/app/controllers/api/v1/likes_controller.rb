class Api::V1::LikesController < ApplicationController

  def create
    @like = Like.create(like_params)
    render json: @like, status: 200
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    render json: @like, status: 200
  end

  private
  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end

end
