class JobsController < ApplicationController

  before_action :require_user, only: [:new, :create, :edit, :update]
  before_action :get_job, only: [:edit, :update, :show]
  before_action :get_all_fylke, only: [:index, :new, :edit, :create, :update]
  before_action :require_job_owner, only: [:edit, :update]

  def index
    @all_jobs ||= Job.all # need this to calculate jobs /fylke  # need to make sure only active jobs are shown later in production
    if requested_jobs
      @jobs = Job.where(fylke_id: requested_jobs).order(created_at: :desc).paginate(page: params[:page], per_page: 10)
      @total = Job.where(fylke_id: requested_jobs).size 
    else
      @jobs = @all_jobs.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
      @total = @all_jobs.size
    end

    respond_to do |format|
      format.html  
      format.js 
    end    
  end 

  def new
    @job = Job.new
  end

  def create  
    @job = Job.new(job_params)
    @job.user = current_user
    @job.status = 'active' # should have been default value but i forgot
    if @job.save
      flash[:success] = 'Your job has been created'
      redirect_to jobs_path
    else
      render :new
    end
  end

  def edit 
  end

  def update
    if @job.update(job_params)
      flash[:success] = "Your job has been update"
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def show 
    @job.update_attribute(:views, @job.views + 1)  
    @all_applications = @job.job_applications
    @same_location_jobs = Job.where(fylke_id: @job.fylke_id).limit(6).order(created_at: :desc)
  end

 private

  def job_params
    params.require(:job).permit(:title,:description, :payment, :street_addr, :destination_addr, :contact_number, :kommune_id, :fylke_id, :terms_of_service, :image, :image_cache)
  end

  def requested_jobs
    params["fylke_id"].keys if params["fylke_id"]
  end

  def get_job
    a = params[:id].split('-').reverse.join('-').to_i
    @job = Job.find_by(id: a)
  end

  def get_all_fylke
    @fylkes = Fylke.all 
  end

  def require_job_owner
    if @job.user != current_user # Only the jobowner can perform job edit and update
      flash[:danger] = "You can't do that"
      redirect_to jobs_path 
    end
 end
end
