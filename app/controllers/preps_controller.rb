class PrepsController < ApplicationController

  def index
  end

  def new
    @prep = Prep.new
  end

  def create
    @prep = Prep.new(prep_params)
  end



  private
  def prep_params
    params.require(:prep).permit(:purpose, :reason, :task, :memo).merge(user_id: current_user.id)
  end
end
