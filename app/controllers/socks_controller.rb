class SocksController < ApplicationController
  include Pundit
  before_action :set_sock, only: [:show, :edit, :update, :delete]
  before_action :authenticate_user!
  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @socks = policy_scope(Sock)
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

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_sock
    @sock = Sock.find(params[:id])
    authorize @sock
  end

  def sock_params
    params.require(:sock).permit(:title, :description, :color, :pattern, :min_size, :max_size, :type, :brand, :season, :age, :price)
  end
end
