class Api::V1::BookmarkedPostsController < ApplicationController


  def create
    @bookmark = BookmarkedPost.create(bookmark_params)
    render json: @bookmark, status: 200
  end

  def unbookmark
    @bookmark = BookmarkedPost.find_by(bookmark_params).destroy
    render json: @bookmark, status: 200
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:user_id, :post_id)
  end
end
