class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all, status: 200
  end
  def show
    @user = User.find(params[:id])
    render json: @user, status: 200
  end


  private

  def user_params
    params.require(:user).permit(
      :first_name,
       :last_name,
       :password_confirmation,
       :password_digest,
       :bio,
       :profile_picture,
       :thumbnail
    )
  end
end
