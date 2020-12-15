class PrepsController < ApplicationController
  before_action :authenticate_user!, only:[:create, :update, :destory]

  def index
      @preps = Prep.includes(:user).order("id DESC")
  end

  def new
    @prep = Prep.new
  end

  def create
    @prep = Prep.new(prep_params)
    if @prep.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @prep = Prep.find(params[:id])
    @review = Review.new
    @reviews = @prep.reviews.includes(:user)
  end
  
  def edit
    @prep = Prep.find(params[:id])
    @review = Review.new
  end
  
  def update
    @prep = Prep.find(params[:id])
    if @prep.update(prep_params)
      redirect_to prep_path(@prep.id)
    else
      render :edit
    end
  end

  def destroy
    @prep = Prep.find(params[:id])
    if @prep.destroy
      redirect_to root_path
    end
  end

  private
  def prep_params
    params.require(:prep).permit(:purpose, :reason, :task, :memo).merge(user_id: current_user.id)
  end

end
