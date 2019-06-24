class SocksController < ApplicationController
  include Pundit
  before_action :set_sock, only: [:show, :edit, :update, :delete]
  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @socks = policy_scope(Sock)
  end

  def show
  end

  def new
    @sock = Sock.new
    authorize @sock
  end

  def create
    @sock = Sock.new(sock_params)
    @sock.user = current_user
    authorize @sock
    if @sock.save
      redirect_to sock_path(@sock)
    else
      render :new
    end

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

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_sock
    @sock = Sock.find(params[:id])
    authorize @sock
  end

  def sock_params
    params.require(:sock).permit(:title, :description, :color, :pattern, :min_size, :max_size, :sock_type, :brand, :season, :age, :price)
  end
end
