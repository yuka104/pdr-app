class ReviewsController < ApplicationController

  def create
    @prep = Prep.find(params[:prep_id])
    @review = Review.new(review_params)
    if @review.save!
      redirect_to prototype_path(@review.prep)
    else
      @prep = @review.prep
      @reviews = @prep.reviews
      render "preps/edit"
    end
  end

  def show
  end

  private
  def review_params
    params.require(:review).permit(:result, :level_id, :success, :failure, :improve).merge(prep_id: params[:prep_id])
  end

end
