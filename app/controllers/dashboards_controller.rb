class DashboardsController < ApplicationController
before_action :require_user
# before action user is looged in, is current user, has been confirmed
# @user in all action is the logged in and current user
  def show
    @kommunes = Kommune.all
    @user = User.find_by(id: current_user.id)
    @my_jobs = Job.where(user_id: current_user.id)
    render :my_profile
  end

  

  def edit_profile
    @kommunes = Kommune.all
    @user = User.find_by(id: current_user.id)
  end

  def my_applicationss
    @my_applications = JobApplication.where(user_id: current_user.id, awarded: false)  
  end

  def my_jobs
    @my_jobs = Job.where(user_id: current_user.id)
  end

  def jobs_won
    @appli_won =  JobApplication.where(user_id: current_user.id, awarded: true)   
  end

  def new_password
    @user = User.find_by(id: current_user.id)   
  end

  def change_password
    @user = User.find_by(id: current_user.id) 
    if !@user.authenticated?(:password, params[:old_password])      
      flash[:danger] = 'Incorrect old password'
      render 'new_password'     
    elsif @user.update_attributes(user_params)
     flash[:success] = "Password succesfully changed."
     redirect_to dashboard_path
    else
      flash[:danger] = 'Passwords do not match'
      render 'new_password'
    end
  end

  def my_profile
    @user = User.find_by(id: current_user.id)  
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end


end