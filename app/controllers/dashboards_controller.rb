class DashboardsController < ApplicationController

# before action user is looged in, is current user, has been confirmed
# @user in all action is the logged in and current user
  def show
    @kommunes = Kommune.all
    @user = User.find(1)
  end

  def reset_password
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit_profile
    @kommunes = Kommune.all
    @user = User.find(1)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def my_applicationss
    #before action. check login, confirmed and current_user
    @my_jobs = JobApplication.where(user_id: '1')
  end

  def my_jobs
    #before action. check login, confirmed and current_user
    @my_jobs = Job.where(user_id: 1)

    respond_to do |format|
      format.js
    end
  end

  def jobs_won
    @jobs_won =  JobApplication.where(user_id: '1', awarded: true)
  end

  def create_password

  end

  def my_profile
    @user = User.find(1)
    respond_to do |format|
      format.js
    end
  end


end