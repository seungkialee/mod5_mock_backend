class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized
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
    render json: @user
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def index
    @user = User.all
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
