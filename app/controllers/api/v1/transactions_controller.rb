class Api::V1::TransactionsController < ApplicationController
  skip_before_action :authorized

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  #   def create
  #     @transactions = Transaction.create(trans_params)
  #   end
  #
  # private
  #
  #   def trans_params
  #     params.require(:transaction).permit()
end
