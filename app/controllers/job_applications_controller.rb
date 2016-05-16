class JobApplicationsController < ApplicationController
  before_action :require_user


  def create
    job_application = JobApplication.new(user_id: params[:user_id], job_id: params[:job_id])
    if job_application.job.user.id == job_application.user_id #if jobowner == job applicant, prevent him from applying
    #Note that the user_id in jobapplications table is that of the applicant not jobowner. 
    #ambiguity could have been removed by using creator and applicant when creating the two tables
      flash[:info] = " Please a jobowner cannot apply to his own job"
      redirect_to :back
    elsif job_application.save
      flash[:success] = "Application succesful. Wait for job owner to invite you"
      redirect_to :back
    else
      flash[:info] = " You have already applied to this job" # there is a validation that prevent saving if a logged in user tries to apply to the same job twice
      redirect_to :back                                      # we do not want duplicate applications. we put validation at the model level and at the database level.
    end
  end

  def destroy
    #delete an application
    if JobApplication.find_by(id: params[:id]).destroy
      flash[:success] = "Application deleted"
      redirect_to :back
    else
      flash[:danger] = "Something went wrong. Unable to delete"
      redirect_to :back
    end
  end

  def award
    #After many helpers have applied to a job, the job owner selects one of them to do the job. This action selects one applicant.
    job_application = JobApplication.find_by(id: params[:id])
    if job_application.awarded == true
      flash[:info]= "You have already invited this helper"
      redirect_to :back
    elsif job_application.update_attribute(:awarded, true)
      flash[:success] = "Invitation succesful. Helper has been notified by email"
      job_application.job.update_attribute(:status,'inactive')
      #send notification email to applicant as a background job
      redirect_to :back
      
    end
  end

 def cancel_award
  #Cancel an already awarded application
  job_application = JobApplication.find_by(id: params[:id])
  if job_application.awarded == false
    flash[:info]= "this helper has not been invited yet"
    redirect_to :back
  elsif job_application.update_attribute(:awarded, false)
    flash[:success] = "Invitation canceled"
    job_application.job.update_attribute(:status,'active')
    redirect_to :back
  end
 end

 private

  

end