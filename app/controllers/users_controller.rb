class UsersController < ApplicationController

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
      flash[:danger] = "record not saved"
      render :new
    end
  end

  def show
    @user = User.find_by(id: 1)
  end


   private

   def user_params
     params.require(:user).permit(:first_name, :last_name, :email, :password_confirmation, :password, :user_self_description, :kommune_id, :admin, :phone, :street_addr, :car_reg)
   end

end