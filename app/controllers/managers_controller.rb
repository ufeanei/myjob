class ManagersController < ApplicationController
  before_action :require_user
  before_action :require_admin

  def show
    @all_users = User.all.order(created_at: :desc).paginate(page: params[:page], per_page: 5)
    @total_users = User.all.size
    @today_users = User.where("created_at >= ?", Time.zone.now.beginning_of_day).size
    render :all_users
  end


  def all_users
    @all_users = User.all.order(created_at: :desc).paginate(page: params[:page], per_page: 5)
    @total_users = User.all.size
    @today_users = User.where("created_at >= ?", Time.zone.now.beginning_of_day).size
  end

  def all_jobs
    @all_jobs = Job.all.order(created_at: :desc).paginate(page: params[:page], per_page: 8)
    @total_jobs = Job.all.size
    @today_jobs = Job.where("created_at >= ?", Time.zone.now.beginning_of_day).size
  end

  def all_applications
    @all_applications = JobApplication.all.order(created_at: :desc).paginate(page: params[:page], per_page: 8)
    @total_applications = JobApplication.all.size
    @today_applications = JobApplication.where("created_at >= ?", Time.zone.now.beginning_of_day).size
  end


  private

  def require_admin
    if !current_user.admin?
      flash[:info] = 'Du kan ikke gjøre det'
      redirect_to jobs_path
    end
  end
end