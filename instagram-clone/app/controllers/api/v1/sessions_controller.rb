class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(user_name: params[:user_name])
    if !@user.nil? &&  @user.authenticate(params[:password])
        render json: user: UserSerializer.new(@user)s tatus: :created
      else
      render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
  private
  def login_params
    params.permit(:user_name, :password)
  end


end
