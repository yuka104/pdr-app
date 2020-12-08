class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
  end

  def show
  end

  private
  def review_params
    params.require(:review).permit(:result, :level_id, :success, :failure, :improve).merge(user_id: current_user.id, review_id: params[:review_id])
  end

end
