class JobsController < ApplicationController

  before_action :require_user, only: [:new, :create, :edit, :update]
  before_action :get_job, only: [:edit, :update, :show]
  before_action :get_all_fylke, only: [:index, :new, :edit]

  def index
    @all_jobs ||= Job.all # need this to calculate jobs /fylke
    if requested_jobs
      @jobs = Job.where(fylke_id: requested_jobs).order(created_at: :desc).paginate(page: params[:page], per_page: 7)
      @total = Job.where(fylke_id: requested_jobs).size 
    else
      @jobs = @all_jobs.order(created_at: :desc).paginate(page: params[:page], per_page: 7)
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
    if @job.save
      flash[:succes] = 'your job has been created'
      redirect_to jobs_path
    else
      render :new
    end
  end

  def edit 
  end

  def update
    if @job.update(job_params)
      flash[:success] = "your job has been update"
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def show   
    @same_location_jobs = Job.where(fylke_id: @job.fylke_id).limit(6).order(created_at: :desc)
  end

 private

   def job_params
    params.require(:job).permit(:title,:description, :payment, :street_addr, :destination_addr, :contact_number, :kommune_id, :fylke_id)
   end

  def requested_jobs
   params["fylke_id"].keys if params["fylke_id"]
  end

  def get_job
    @job = Job.find_by(id: params[:id])
  end

  def get_all_fylke
   @fylkes = Fylke.all 
  end
end
