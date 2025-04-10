class SessionsController < ApplicationController

  def new
  end

  def log_in
    cleaned_email = params[:email].strip.downcase
    user = User.find_or_create_by(email: cleaned_email)
    if user
      reset_session
      # session[:email] = user.email
      session[:email] = user[:email]
      redirect_to acts_path
    else
      redirect_to login_path, alert: 'Something went wrong.'
    end
  end

  def log_out
    reset_session
    session[:email] = nil
    redirect_to root_path
  end

end
