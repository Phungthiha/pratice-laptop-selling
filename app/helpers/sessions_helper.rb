module SessionsHelper
  def log_in user
    session[:user_id] = user.id
    session[:admin] = user.admin
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by id: session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def log_out
    session.delete :user_id
    @current_user.present?
  end
end
