class PasswordResetsController < ApplicationController
before_action :get_user,         only: [:edit, :update]
before_action :valid_user,       only: [:edit, :update]
before_action :check_expiration, only: [:edit, :update]

def new 
end

def create
  @user = User.find_by(email: params[:email].downcase)
   if @user
    @user.create_reset_digest
    UserMailer.reset_password(@user).deliver
    flash[:info] = "Please check your email for password reset instructions"
    redirect_to jobs_path
  else
    flash.now[:danger] = "Email address not found"
    render :new
  end
end

def edit
  #see before action code
end


def update
 # see before action for missing code
 
  if params[:user][:password].empty?
    @user.errors.add(:password, "can't be empty")
    render :edit
  elsif @user.update_attributes(user_params)
    session[:user_id] = @user.id
    flash[:success] = "Password has been reset."
    redirect_to jobs_path
  else
    render :edit
  end
end 

private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  
  def get_user
    @user = User.find_by(email: params[:email])
  end

  # Confirms a valid user.
  def valid_user
    unless (@user && @user.confirmed? && @user.authenticated?(:reset, params[:id]))
      flash[:danger] = "Please you must first register and activate your account"
      redirect_to jobs_path
    end
  end

  # Checks expiration of reset token.
  def check_expiration
    if @user.password_reset_expired?
      flash[:danger] = "Password reset has expired."
      redirect_to new_password_reset_url
    end
  end

  
end
