class ReviewsController < ApplicationController 
  before_action :require_user

  def create
    @review = Review.new(params.require(:review).permit(:comment))
    @review.job_application_id = params[:job_application_id]
    @review.user = current_user

  
    if @review.save
      flash[:success] = " Your comment was added"
      redirect_to :back
    else
      render 'users/show'
    end
  end
end