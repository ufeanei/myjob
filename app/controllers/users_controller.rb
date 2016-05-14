class UsersController < ApplicationController
  before_action :require_user, only: [:edit, :destroy]

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

  def update
    @kommunes = Kommune.all
    @user = User.find_by(id: params[:id])
     if @user.update_attributes(user_edit_params)
      flash[:success] = "Profile succesfully updated"
      redirect_to :back
    else
      render 'dashboards/edit_profile'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end


  private

   def user_params
     params.require(:user).permit(:first_name, :last_name, :email, :password_confirmation, :password, :user_self_description, :kommune_id, :admin, :phone, :street_addr, :car_reg, :terms)
   end

   def user_edit_params
     params.require(:user).permit(:first_name, :last_name, :user_self_description, :kommune_id, :admin, :phone, :street_addr, :car_reg)
   end

end