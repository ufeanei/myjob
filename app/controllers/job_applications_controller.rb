class JobApplicationsController < ApplicationController
  before_action :require_user
  def create
     job_application = JobApplication.new(jobparams)
     if job_application.save
      flash[:success] = "application succesful. Wait for job owner to invite you"
      redirect_to :back
     end

     def destroy
      JobApplication.find_by(id: 1).delete
      job_application = JobApplication.find_by(id: 1)
      if 
      #delete an application
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
  end
end