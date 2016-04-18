class JobsController < ApplicationController
  def login

  end



  def index
    @fylke = Fylke.all

    @jobs = Job.all
  end

  def new
    @kommune = [["Asker", 1], ["Akerhus", 2]] #Kommune.all.map{|u| [ u.name, u.id ] }
    @job = Job.new
  end

  def create

    
    @job = Job.new(job_params)
    if @job.save
      flash[:succes] = 'your job has been created'
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find_by(params[:id]) 
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
  end

 private

 def job_params
  params.require(:job).permit(:title,:description, :payment, :street_addr, :destination_addr, :contact_number,  :user_id, :kommune_id)
 end




end
