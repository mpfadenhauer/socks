class TransactionsController < ApplicationController
  before_action :set_sock, only: [:new, :create]
  def new
    @transaction = Transaction.new
    authorize @transaction
  end

  def create
    @transaction = Transaction.new
    @transaction.user = current_user
    @transaction.sock = @sock
    authorize @transaction
    if @transaction.save
      @sock.bought = true
      @sock.save
    else
      render :new
    end
  end

  private

  def set_sock
    @sock = Sock.find(params[:sock_id])
    authorize @sock
  end

  def transaction_params
    params.require(:transaction).permit
  end
end
