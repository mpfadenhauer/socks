class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:id])
    @review = Review.new
    authorize @review
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
