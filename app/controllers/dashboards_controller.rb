class DashboardsController < ApplicationController
before_action :require_user
# before action user is looged in, is current user, has been confirmed
# @user in all action is the logged in and current user
  def show
    @kommunes = Kommune.all
    @user = User.find_by(id: current_user.id)
    @my_jobs = Job.where(user_id: current_user.id)
  end

  def reset_password
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit_profile
    @kommunes = Kommune.all
    @user = User.find_by(id: current_user.id)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def my_applications
    #before action. check login, confirmed and current_user
    @my_applications = JobApplication.where(user_id: current_user.id, awarded: false)
    respond_to do |format|
      format.js
    end
  end

  def my_jobs
    #before action. check login, confirmed and current_user
    @my_jobs = Job.where(user_id: current_user.id)

    respond_to do |format|
      format.js
    end
  end

  def jobs_won
    @appli_won =  JobApplication.where(user_id: current_user.id, awarded: true)

    respond_to do |format|
      format.js
    end
  end

  def create_password
    #if !authenticate(params[:oldpassword])
    #flash[:danger]= "old password incorrect"
    #render form
    #else
   # if newpassword==old password
     # user.password=newpassword
    #

  end

  def my_profile
    @user = User.find_by(id: current_user.id)
    respond_to do |format|
      format.js
    end
  end


end