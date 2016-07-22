class DashboardsController < ApplicationController
before_action :require_user
before_action :helper_ratings # this is to track the number of helpers needing reviews as one navigates btw all actions/views of the dashboard
# @user in all action is the logged in and current user
  def show
    @kommunes = Kommune.all
    @user = User.find_by(id: current_user.id)
    @my_jobs = Job.where(user_id: current_user.id)
    render :my_profile
  end

  def my_applications
    @my_applications = JobApplication.where(user_id: current_user.id, awarded: false).order(created_at: :desc).paginate(page: params[:page], per_page: 8)
    @myapps = 'clicked'
  end

  def my_jobs
    @my_jobs = Job.where(user_id: current_user.id).order(created_at: :desc).order(created_at: :desc).paginate(page: params[:page], per_page: 3)
    @applications = JobApplication.where(job_id: @my_jobs.ids) # find the applications for all the jobs owned by current_user
    @myjobs = 'clicked'
  end

  def jobs_won
    @appli_won =  JobApplication.where(user_id: current_user.id, awarded: true).order(created_at: :desc).paginate(page: params[:page], per_page: 8) 
    @jobswon = 'clicked'
  end

  def edit_profile
    @kommunes = Kommune.all
    @user = User.find_by(id: current_user.id)
    @editprofile = 'clicked'
  end

  def update_profile
    @kommunes = Kommune.all
    @user = User.find_by(id: current_user.id) 
    if @user.update_attributes(user_edit_params)
      flash[:success] = "Profil oppdatert"
      redirect_to dashboard_path
    else
      @editprofile = 'clicked'
      render 'edit_profile'
    end
  end

  def new_password
    @user = User.find_by(id: current_user.id) 
    @changepass = 'clicked'
  end

  def change_password
    @changepass = 'clicked'
    @user = User.find_by(id: current_user.id) 
    if !@user.authenticated?(:password, params[:gammelt_passord])      
      flash[:danger] = 'Feil gammelt passord'
      render 'new_password'     
    elsif @user.update_attributes(user_params)
     flash[:success] = "Passordet er endret."
     redirect_to dashboard_path
    else
      flash[:danger] = 'Passordene samsvarer ikke'
      
      render 'new_password'
    end
  end

  def my_profile
    @user = User.find_by(id: current_user.id)
    @myprofile = 'clicked' 
  end

  def rate_your_helpers
    @review = Review.new
    @rate = 'clicked'
    #@my_jobs_ids = Job.where(user_id: current_user).ids  #### this commented out info is removed to helper_rating method in the before action ### 
    #@applications_without_reviews = JobApplication.where(awarded: true, job_id: @my_jobs_ids).select {|x| x.reviews.empty?}
  end

  
  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def user_edit_params
    params.require(:user).permit(:first_name, :last_name, :user_self_description, :kommune_id, :admin, :image, :phone, :street_addr, :car_reg)
  end

end