class Api::V1::TransactionsController < ApplicationController
  skip_before_action :authorized

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  def create
    @transaction = Transaction.new(trans_params)
    if @transaction.valid?
      @transaction.save

      render json: @transaction
    end
  end

  private

  def trans_params
    params.require(:transaction).permit(:detail, :amount, :account_id, :receiving_id, :transaction_type)
  end
end
