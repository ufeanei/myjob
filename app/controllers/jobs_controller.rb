class JobsController < ApplicationController

  def index
    @fylkes = Fylke.all
    @all_jobs= Job.all

    @jobs = requested_jobs ? Job.where(fylke_id: requested_jobs) : @all_jobs
 
    respond_to do |format|
      format.html
      format.js 
    end
  end 

  def new
    @fylkes = Fylke.all #.map { |e| [e.name, e.id] } #[["Asker", 1], ["Akerhus", 2]] #Kommune.all.map{|u| [ u.name, u.id ] }
    @job = Job.new
  end

  def create    
    @job = Job.new(job_params)
    if @job.save
      flash[:succes] = 'your job has been created'
      redirect_to jobs_path
    else
      render :new
    end
  end

  def edit
    @fylkes = Fylke.all
    @job = Job.find_by(id: params[:id]) 
  end

  def update
    @job = Job.find_by(params[:id])
     if @job.update(job_params)
      flash[:success] = "your job has been update"
      redirect_to root_path
    else
      render :edit
    end
  end

  def show   
    @job = Job.find_by(id: params[:id])
    @same_location_jobs = Job.where(fylke_id: @job.fylke_id).limit(6).order(created_at: :desc)
  end

 private

   def job_params
    params.require(:job).permit(:title,:description, :payment, :street_addr, :destination_addr, :contact_number,  :user_id, :kommune_id, :fylke_id)
   end

  def requested_jobs
   params["fylke_id"].keys if params["fylke_id"]
  end

  


end
