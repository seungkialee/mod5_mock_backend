class Api::V1::AccountsController < ApplicationController
  before_create :update_routing
  def create
    @account = Account.create(acc_params)
    render json: @account
 end

  def update_routing
    self.routing = rand(9)
  end

  def acc_params
    params.require(:account).permit(:type, :balance, :user)
   end
end
