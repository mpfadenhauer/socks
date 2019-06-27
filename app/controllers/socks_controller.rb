class SocksController < ApplicationController
  before_action :set_sock, only: [:show, :edit, :update, :destroy]
  # skip_after_action :verify_policy_scoped
  skip_before_action :authenticate_user!, only: [:show]
  before_action :instance_user, only: [:index]
  def index
    if params[:search].present?
      @socks = policy_scope(Sock).search_by_color_and_title(params[:search])
    elsif params[:filter_color].present? || params[:filter_sock_type].present? || params[:filter_sock_pattern].present? || params[:filter_season].present?
      search_term = params[:filter_color] + ' ' + params[:filter_sock_type] + ' ' + params[:filter_sock_pattern] + ' ' + params[:filter_season]
      @socks = policy_scope(Sock).search_by_filters(search_term)
    else
      @socks = policy_scope(Sock)
    end
    respond_to do |format|
      format.html { render 'socks/index' }
      format.js
    end
  end

  def show
    @user = @sock.user
    @ids = get_reviewer
    @user = @sock.user
     if @user.latitude != nil && @user.longitude != nil
      @markers = [
        lat: @user.latitude,
        lng: @user.longitude,
        image_url: helpers.asset_url('sock-marker.png')
      ]
    else
      @markers = []
    end
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

  def instance_user
    @instance_user = User.new
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_sock
    @sock = Sock.find(params[:id])
  end

  def sock_params
    params.require(:sock).permit(:title, :description, :color, :pattern, :size, :sock_type, :brand, :season, :age, :price, :photo)
  end

  def filtering_params(params)
    params.slice(:color, :size, :sock_type, :brand, :season, :age, :price)
  end

  def get_reviewer
    ids = []
    @user.reviews.each do |review|
      ids << review.review_giver_id
    end
    return ids
  end
end
