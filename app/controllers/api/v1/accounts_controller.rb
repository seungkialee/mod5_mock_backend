class Api::V1::AccountsController < ApplicationController
  skip_before_action :authorized
  def create
    @account = Account.create(acc_params)
    render json: @account
 end

  def index
    @accounts = Account.all
    render json: @accounts
  end

  def show
    @account = Account.where(id: params[:id])
    render json: @account
  end

  def update
    @account = Account.find(params[:id])
    @balance = @account.balance
    @newBalance = @balance + params[:balance]
    @account.update_attributes(balance: @newBalance)
    render json: @account
  end

  def acc_params
    params.require(:account).permit(:account_type, :balance, :id)
   end
end
