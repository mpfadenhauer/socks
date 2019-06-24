class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:id])
    @review = Review.new
    if current_user == @user
      return "You can't review yourself!"
    else
      authorize @review
    end
  end

  def create
    @review = Review.new(review_params)
    @review.review_giver = current_user
    @user = User.find(params[:id])
    @review.user_reviewed = @user
    authorize @review
    if @review.save
      redirect_to profile_path(@user)
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :user_reviewed, :rating)
  end
end
