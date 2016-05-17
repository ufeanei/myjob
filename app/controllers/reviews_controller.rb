class ReviewsController < ApplicationController 
  before_action :require_user

  def create
    @review = Review.new(params.require(:review).permit(:comment))
    @review.job_application_id = params[:job_application_id]
    @review.user = current_user

   @user = User.find_by(id: params[:user_id])

    if @review.save
      flash[:success] = " Your comment was added"
      redirect_to :back
    else
      flash[:danger] = "You can't submit an empty comment"
      redirect_to user_path(@user)
    end
  end
end