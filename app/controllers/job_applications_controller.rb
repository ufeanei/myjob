class JobApplicationsController < ApplicationController
  before_action :require_user
  before_action :get_application, only: [:destroy, :award]
  before_action :correct_user, only: [:award]
  before_action :max_applicants, only: [:create]


  def create
    @job_application = JobApplication.new(user_id: params[:user_id], job_id: params[:job_id])
    if @job_application.job.user.id == @job_application.user_id #if jobowner == job applicant, prevent him from applying
    #Note that the user_id in jobapplications table is that of the applicant not jobowner. 
    #ambiguity could have been removed by using creator and applicant when creating the two tables
      flash[:info] = "Please a jobowner cannot apply to his own job"
      redirect_to :back
    elsif @job_application.save
      flash[:success] = "Application succesful. Wait for job owner to invite you"
      redirect_to :back
    else
      flash[:info] = "You have already applied to this job" # Validations enforced at model level and  database level prevent a user from applying to the same job twice
      redirect_to :back                                      
    end
  end

  def destroy 
  #delete an application
  #see before action  
    if @job_application.user != current_user # Make sure only job applicant and admin can delete their applications. 
      flash[:danger] = "you can't do that"
      redirect_to root_path
    elsif @job_application.destroy
      flash[:success] = "Application deleted"
      redirect_to :back
    end
  end

  def award
    #award job to an applicant 
    #see before action
   if @job_application.awarded == true
      flash[:info]= "You have already invited this helper"
      redirect_to :back
    elsif @job_application.update_attribute(:awarded, true)
      flash[:success] = "Invitation succesful. Helper has been notified by email"
      @job_application.job.update_attribute(:status,'inactive')
      UserMailer.invited_notice(@job_application).deliver  #send notification email to applicant as a background job
      UserMailer.review_notice(@job_application).deliver # send notification 2 days later as background job
      redirect_to :back 
    end
  end

 private
 def correct_user
    if @job_application.job.user != current_user # Only the jobowner can invite a helper to a job
      flash[:danger] = "You can't do that"
      redirect_to jobs_path 
    end
 end

 def get_application
  @job_application = JobApplication.find_by(id: params[:id])
 end

 def max_applicants
  if JobApplication.where(job_id: params[:job_id]).size == 4
    flash[:info] = "Sorry maximum number of applicants reached for this job. Please apply to another job"
    redirect_to :back
  end
 end

end