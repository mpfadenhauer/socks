class SocksController < ApplicationController
  before_action :set_sock, only: [:show, :edit, :update, :delete]
  def index
    @socks = Sock.all
  end

  def show
  end

  def new
    @sock = Sock.new
  end

  def create
    @sock = Sock.create(sock_params)
    redirect_to sock_path(@sock)
  end

  def edit
  end

  def update
    @sock.update(sock_params)
    redirect_to sock_path(@sock)
  end

  def delete
    @sock.destroy
    redirect_to socks_path
  end

  private

  def set_sock
    @sock = Sock.find(params[:id])
  end

  def sock_params
    params.require(:sock).permit(:title, :description, :color, :pattern, :min_size, :max_size, :type, :brand, :season, :age, :price)
  end
end
