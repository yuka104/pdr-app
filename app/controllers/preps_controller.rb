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



  private
  def prep_params
    params.require(:prep).permit(:purpose, :reason, :task, :memo).merge(user_id: current_user.id)
  end
end
