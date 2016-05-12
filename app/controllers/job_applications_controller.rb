class JobApplicationsController < ApplicationController
  before_action :require_user


  def create
    job_application = JobApplication.create(user_id: params[:user_id], job_id: params[:job_id])
    if job_application.job.user.id == job_application.user_id
      flash[:info] = " Please a jobowner cannot apply to his own job"
      redirect_to :back
    elsif job_application.valid?
      flash[:success] = "application succesful. Wait for job owner to invite you"
      redirect_to :back
    else
      flash[:info] = " you have already applied to this job"
      redirect_to :back
    end
  end

  def destroy
    #delete an application
    if JobApplication.find_by(id: 1).delete
      flash[:success] = "application deleted"
      redirect_to :back
    else
      flash[:danger] = "something went wrong. Unable to delete"
      redirect_to :back
    end
  end

  def award
    #award an application to a user
    job_application = JobApplication.find_by(id: 1)
    if job_application.update_attribute(awarded: true)
      flash[:success] = "Invitation succesful. Helper has been notified by email"
      redirect_to :back
      #send notification email to user as a background job
    end
  end

 def cancel_award
  #cancel an already awarded application
  job_application = JobApplication.find_by(id: 1)
  if job_application.update_attribute(awarded: false)
    flash[:success] = "Invitation succesful canceled"
    redirect_to :back
    #send notification email to user as a background job
  end
 end

 private
  

end