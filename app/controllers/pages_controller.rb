class PagesController < ApplicationController
  def home
  end

  def profile
    @user = User.find(params[:id])
    @user.rating = get_average(@user)
    @user.save
    @ids = get_reviewer
  end

  private

  def get_average(user)
    length = user.reviews.length
    sum = 0

    unless user.reviews[0].nil?
      user.reviews.each do |review|
        sum += review.rating
      end
      return sum / length
    end
    return "no reviews yet"
  end

  def get_reviewer
    ids = []
    @user.reviews.each do |review|
      ids << review.review_giver_id
    end
    return ids
  end
end
