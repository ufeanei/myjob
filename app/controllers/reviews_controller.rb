class ReviewsController < ApplicationController 
  before_action :require_user
  #make sure only the jobowner can review

  def create
    @review = Review.new(params.require(:review).permit(:comment, :rating))
    @review.job_application_id = params[:job_application_id]
  
    @application = JobApplication.find_by(id: params[:job_application_id])
   # @user = User.find_by(id: params[:user_id]) #useful for the redirect path if review validations failed
    @review.user =  @application.user #Jobowner review  belongs to the helper

    if @review.save
      flash[:success] = "Tusen takk!"      
      UserMailer.delay(queue: 'immediate', priority: 0).review_added(@application) # send email to helper as background job
      redirect_to rate_your_helpers_dashboard_path
    else
      @my_jobs_ids = Job.where(user_id: current_user).ids
      @applications_without_reviews = JobApplication.where(awarded: true, job_id: @my_jobs_ids).select {|x| x.reviews.empty?}
      @rate = 'clicked'
      render 'dashboards/rate_your_helpers'
    end
  end
end



    