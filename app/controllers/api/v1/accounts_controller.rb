class Api::V1::AccountsController < ApplicationController
  skip_before_action :authorized
  def create
    @account = Account.create(acc_params)
    render json: @account
 end

  def index
    @account = Account.all
    render json: @account
  end

  def show
    @account = Account.where(user_id: params[:id])
    render json: @account
  end

  def acc_params
    params.require(:account).permit(:account_type, :balance, :user_id)
   end
end
