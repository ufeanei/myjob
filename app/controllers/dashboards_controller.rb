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

  def my_applicationss
    @my_applications = JobApplication.where(user_id: current_user.id, awarded: false)
    respond_to do |format|
      format.js
    end
  end

  def my_jobss
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

  def change_password
    @user = User.find_by(id: current_user.id)
    if !@user.authenticate(params[:oldpassword])
      flash[:danger]= "Old password incorrect"
      render form
    elsif params['new_password'] == params['new_password']
      @user.update_attribute(:password, params['old_password'])
    else
      flash[:danger] = 'Passwords do not match'
    end
  end

  def my_profile
    @user = User.find_by(id: current_user.id)
    respond_to do |format|
      format.js
    end
  end


end