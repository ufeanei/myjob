class PasswordResetsController < ApplicationController


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
  @user = User.find_by(email: params[:email])  
end


def update
  @user = User.find_by(email: params[:email])
  if params[:user][:password].empty?
    @user.errors.add(:password, "can't be empty")
    render 'edit'
  elsif @user.update_attributes(user_params)
    log_in @user
    flash[:success] = "Password has been reset."
    redirect_to @user
  else
    render 'edit'
  end
end 

private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  # Before filters
  def get_user
    @user = User.find_by(email: params[:email])
  end

  # Confirms a valid user.
  def valid_user
    unless (@user && @user.activated? && @user.authenticated?(:reset, params[:id]))
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
