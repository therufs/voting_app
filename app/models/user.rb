class User < ApplicationRecord
  attr_reader :email

  def cast_vote
    # increment vote tally on Act
    # update User.voted_for
  end
end
