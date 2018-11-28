class Api::V1::TransactionsController < ApplicationController
  skip_before_action :authorized
  def index
    @transactions = Transaction.all
    render json: @transactions
  end
end
