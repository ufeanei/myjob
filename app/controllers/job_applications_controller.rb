class JobApplicationsController < ApplicationController
  before_action :require_user
  before_action :get_application, only: [:destroy, :award]
  before_action :correct_user, only: [:award]
  before_action :max_applicants, only: [:create]
  before_action :require_admin_or_helper, only: [:destroy]


  def create
    @job_application = JobApplication.new(user_id: params[:user_id], job_id: params[:job_id])
    
    if @job_application.job.user.id == @job_application.user_id #if jobowner == job applicant, prevent him from applying
    #Note that the user_id in jobapplications table is that of the applicant not jobowner. 
    #ambiguity could have been removed by using creator and applicant when creating the two tables
      flash[:info] = "Du kan ikke gjøre det. Dette er din annonse."
      redirect_to :back
    elsif @job_application.save
      flash[:success] = "Søknad vellykket. Vent på jobbeier å invitere deg"
      redirect_to :back
    else
      flash[:info] = "Du har allerede søkt på denne jobben" # Validations enforced at model level and  database level prevent a user from applying to the same job twice
      redirect_to :back                                      
    end
  end

  def destroy 
    if @job_application.destroy
      flash[:success] = "Søknaden slettet"
      redirect_to :back
    end
  end

  def award
   if @job_application.awarded == true
      flash[:info]= "Du har allerede invitert denne hjelperen"
      redirect_to :back
    elsif @job_application.update_attribute(:awarded, true)
      flash[:success] = "Invitasjon vellykket. Hjelper varslet via e-post"
      @job_application.job.update_attribute(:status,'inactive')
      UserMailer.delay(queue: 'immediate', priority: 0).invited_notice(@job_application) #send notification email to applicant as a background job
      UserMailer.delay(queue: 'sixhrs', priority: 10, run_at: 6.hours.from_now).review_notice(@job_application)# send notification 2 days later as background job
      redirect_to :back 
    end
  end

 private

 def correct_user
    if @job_application.job.user != current_user # Only the jobowner can invite a helper to a job
      flash[:danger] = "Du kan ikke gjøre det"
      redirect_to jobs_path 
    end
 end

 def get_application
  @job_application = JobApplication.find_by(id: params[:id])
 end

 def max_applicants
  if JobApplication.where(job_id: params[:job_id]).size == 4
    flash[:info] = "Beklager, maksimalt antall  hjelpere(4) nådd for denne jobben. Vennligst bla andre annonser"
    redirect_to :back
  end
 end

 def require_admin_or_helper
   if (current_user != @job_application.user ) && (current_user.admin == false)  # Make sure only job applicant and admin can delete their applications. 
      flash[:danger] = "Du kan ikke gjøre det"
      redirect_to root_path
   end
 end

 def check_payment
  if @job_application.job.paid == false
    flash[:info] = "Vennligst betale først"
    redirect_to :back
  end
 end

end