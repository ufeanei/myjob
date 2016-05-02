class SessionsController < ApplicationController

  def new 
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Login succesfull"
      redirect_to :back
    else
      flash[:danger] = "Invalid password or username"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You've logged out"
    redirect_to jobs_path
  end

  
end