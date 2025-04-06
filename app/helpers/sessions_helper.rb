module SessionsHelper
  def active_user
    @active_user ||= User.find_by(email: session[:email])
  end

  def logged_in?
    !active_user.nil?
  end

end
