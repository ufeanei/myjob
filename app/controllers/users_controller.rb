class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user= User.new(user_params)
    if @user.save
      flash[:success]=" Signup succesfull. Please comple your profile"
      redirect_to user_edit_path(@user)
    else
      render :new
    end
  end

  def edit
    @kommunes = Kommune.all
    @user = User.find_by(id: params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end



  def dashboard
    @kommunes = Kommune.all
    @user = User.find_by(id: params[:id])
  end

  def reset_password
    respond_to do |format|
      format.html
      format.js
    end
  end

  def my_applicationss
    #before action. check login, confirmed and current_user
    @my_jobs = JobApplication.where(user_id: params[:id])
  end

  def my_jobs
    #before action. check login, confirmed and current_user
    @my_jobs = Job.where(user_id: params[:id])
  end

  def jobs_won
    @jobs_won =  JobApplication.where(user_id: params[:id], awarded: true)
  end





   private

   def user_params
     params.require(:user).permit(:first_name, :last_name, :email, :password)
   end



end