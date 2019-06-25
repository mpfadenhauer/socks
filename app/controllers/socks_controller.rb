class SocksController < ApplicationController
  before_action :set_sock, only: [:show, :edit, :update, :destroy]
  # skip_after_action :verify_policy_scoped

  def index
    # raise
    if params[:search].present?
      @socks = policy_scope(Sock).search_by_color_and_title(params[:search])
    # elsif params[:query].present?
      # @socks = Sock.where(title: params[:query])
    elsif [:color].present?
      @socks = policy_scope(Sock).filter(params.slice(:color, :sock_size, :sock_type,
                                              :brand, :season, :age, :price))
    else
      @socks = policy_scope(Sock)
    end

  end

  def show
    @user = @sock.user
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

  def destroy
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

  def filtering_params(params)
    params.slice(:color, :min_size, :max_size, :sock_type, :sock_pattern, :brand, :season, :age, :price)
  end
end
