class SessionsController < ApplicationController

  def new 
    if logged_in?
      flash[:success] = "you already logged in"
      redirect_to jobs_path
    end
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      params[:remember] == '1' ? remember(user) : forget(user) # this lin
      flash[:success] = "Login succesfull"
      redirect_to jobs_path
    else
      flash[:danger] = "Invalid password or username"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "You've logged out"
    redirect_to jobs_path
  end

  
end