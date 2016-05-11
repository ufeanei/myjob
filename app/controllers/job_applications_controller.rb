class JobApplicationsController < ApplicationController
	before_action :require_user
	def create
     job_application = JobApplication.new(jobparams)
     if job_application.save
     	flash[:success] = "application succesful. Wait for job owner to invite you"
     	redirect_to :back
     end

     def destroy
     	#delete an application
     end

     def award
     	#award an application to a user
     end

     def cancel_award
     	#cancel an already awarded application
     end



	end
end