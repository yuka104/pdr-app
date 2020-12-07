class PrepsController < ApplicationController

  def index
    @preps = Prep.order("id DESC")
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
  end
  
  def edit
  end
  
  def update
    @prep = Prep.find(params[:id])
    @prep.update(prep_params)
  end



  private
  def prep_params
    params.require(:prep).permit(:purpose, :reason, :task, :memo).merge(user_id: current_user.id)
  end
end
