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
end


def update
end



  
end
