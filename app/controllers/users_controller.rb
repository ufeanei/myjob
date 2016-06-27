class UsersController < ApplicationController
  before_action :require_user, only: [:edit, :destroy]
  before_action :get_kommunes, only: [:new, :update, :create]
  before_action :get_user, only: [:show]
  

  def new
    @user = User.new 
  end

  def create
    @user= User.new(user_params)
    if @user.save
      UserMailer.confirm_email(@user).deliver
      flash[:success]= "Signup succesfull. Please check your email to confirmed your account"
      redirect_to jobs_path
    else
      flash[:danger] = "Account not created"
      render :new
    end
  end

  

  def show
    #@user = User.find_by(id: params[:id]) 
    @review = Review.new
    @appli_won =  JobApplication.where(user_id: @user.id, awarded: true).order(created_at: :desc).paginate(page: params[:page], per_page: 2) #We need all jobs he has done so that we can place job owner reviews under each one 
                         #on the user show page
    @total_invitations = JobApplication.where(user_id: @user.id, awarded: true).size
    if @user.reviews.blank?
      @average_review = 0
    else
      @average_review = @user.reviews.average(:rating).round(2)
    end
    @total = @user.reviews.size
  end


  private

   def user_params
     params.require(:user).permit(:first_name, :last_name, :email, :password_confirmation, :password, :user_self_description, :kommune_id, :image, :admin, :phone, :street_addr, :car_reg, :terms)
   end

   def user_edit_params
     params.require(:user).permit(:first_name, :last_name, :user_self_description, :kommune_id, :admin, :image, :phone, :street_addr, :car_reg)
   end

   def get_kommunes
    @kommunes = Kommune.all
   end

   def get_user
     a = params[:id].split('-').reverse.join('-').to_i
     @user = User.find_by(id: a)
   end
end