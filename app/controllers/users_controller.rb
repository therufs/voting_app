class UsersController < ApplicationController
  def vote
    active_user.cast_vote ## TODO figure out where in the state of things the Act info is
  end
end
