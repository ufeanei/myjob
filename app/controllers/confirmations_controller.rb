class ConfirmationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])

    if user && !user.confirmed? && user.authenticated?(:confirmation, params[:token])
      user.update_attribute(:confirmed, true)
      user.update_attribute(:activated_at, Time.zone.now)
      session[:user_id] = user.id
      flash[:success] = "Account confirmed. Please complete your profile"
      redirect_to edit_profile_dashboard_path
    else
      flash[:danger] = "Invalid confirmation link"
      redirect_to jobs_path
    end
  end  
end