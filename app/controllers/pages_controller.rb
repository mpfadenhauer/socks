class PagesController < ApplicationController
  def home
  end

  def profile
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:location, :username, :rating, :email)
  end
end
