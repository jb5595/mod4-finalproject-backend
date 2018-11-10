class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all, status: 200
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 200
  end




  private

  def user_params
    params.permit(
      :user_name,
      :first_name,
       :last_name,
       :password_confirmation,
       :password_digest,
       :password,
       :bio,
       :profile_picture,
       :thumbnail
    )
  end
end
