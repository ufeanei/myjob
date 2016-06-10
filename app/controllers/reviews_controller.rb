class ReviewsController < ApplicationController 
  before_action :require_user

  def create
    @review = Review.new(params.require(:review).permit(:comment))
    @review.job_application_id = params[:job_application_id]
    @review.user = current_user
    @application = JobApplication.find_by(id: params[:job_application_id])

    @user = User.find_by(id: params[:user_id]) #useful for the redirect path if review validations failed

    if @review.save
      flash[:success] = " Your comment was added"
      # send email to helper as background job
      UserMailer.delay(queue: 'immediate', priority: 0).review_added(@application)
      redirect_to :back
    else
      flash[:danger] = "You can't submit an empty comment"
      redirect_to user_path(@user)
    end
  end
end