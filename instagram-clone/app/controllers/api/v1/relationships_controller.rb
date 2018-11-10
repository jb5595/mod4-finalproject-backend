class Api::V1::RelationshipsController < ApplicationController

  def create
    @follower = User.find(relationship_params[:follower_id])
    @followed = User.find(relationship_params[:followed_id])
    @follower.follow(@followed)
    render json: @follower, status: 200
  end

  def unfollow
    @follower = User.find(relationship_params[:follower_id])
    @followed = User.find(relationship_params[:followed_id])
    @follower.unfollow(@followed)
    render json: @follower, status: 200
  end



  private

  def relationship_params
    params.require(:relationship).permit(:follower_id, :followed_id)
  end
end
