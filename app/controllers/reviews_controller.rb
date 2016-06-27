class ReviewsController < ApplicationController 
  before_action :require_user
  #make sure only the jobowner can review

  def create
    @review = Review.new(params.require(:review).permit(:comment, :rating))
    @review.job_application_id = params[:job_application_id]
    #@review.user = current_user
    @application = JobApplication.find_by(id: params[:job_application_id])

    @user = User.find_by(id: params[:user_id]) #useful for the redirect path if review validations failed

    @review.user =  @application.user #Jobowner review  belongs to the helper

    if @review.save
      flash[:success] = "Your comment was added"
      # send email to helper as background job
      UserMailer.delay(queue: 'immediate', priority: 0).review_added(@application)
      redirect_to user_path(@user)
    else
      @appli_won =  JobApplication.where(user_id: @user.id, awarded: true).order(created_at: :desc).paginate(page: params[:page], per_page: 2) 
      @total_invitations = JobApplication.where(user_id: @user.id, awarded: true).size
      if @user.reviews.blank?
        @average_review = 0
      else
        @average_review = @user.reviews.average(:rating).round(2)
      end
      @total = @user.reviews.size
      render 'users/show'
    end
  end
end