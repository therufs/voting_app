class ActsController < ApplicationController

  def create
    @act = Act.new(act_params)
    if @act.save
      active_user.cast_vote(@act)
      redirect_to root_path, message: "Act created."
    else
      redirect_to root_path, alert: "Something went wrong."
    end
  end

  def index
    @acts = Act.all
  end

  private

  def act_params
    params.require(:act).permit(:actName) ## :( i think there's some rails-react synergy i'm missing here
  end

end
