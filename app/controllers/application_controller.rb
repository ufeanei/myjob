class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?


  # This gets the currently logged in user
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(:remember, cookies[:remember_token])
        user_id = session[:user_id]  # create a session without login form. ie use the cookie infos
        @current_user = user
      end
    end
  end

 #This boolean returns false if the user is not logged in and true if logged in. Useful for views
  def logged_in?
  	!!current_user
  end

  # This remembers a user even when he closes the browsers without loging out. 
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end 
 # Does the opposite of remember
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end



  def require_user
  	if !logged_in?
  		flash[:info] = "Please first login"
  		redirect_to jobs_path
  	end
  end
end
