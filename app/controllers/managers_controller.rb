class ManagersController < ApplicationController
  before_action :require_user
  before_action :require_admin


  def all_users
    @all_users = User.all
    @total_users = User.all.size
    @today_users = User.where("created_at >= ?", Time.zone.now.beginning_of_day).size
  end

  def all_jobs
    @all_jobs = Job.all
    @total_jobs = Job.all.size
    @today_jobs = Job.where("created_at >= ?", Time.zone.now.beginning_of_day).size
  end

  def all_applications
    @all_applications = JobApplication.all
    total_applications = JobApplication.all.size
  end


  private

  def require_admin
    if !current_user.admin?
      flash[:info] = 'You cannot do that'
      redirect_to jobs_path
    end
  end
end