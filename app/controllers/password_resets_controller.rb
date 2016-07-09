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
    UserMailer.delay.reset_password(@user, @user.reset_token)
    flash[:info] = "En melding med instruksjoner om hvordan du tilbakestiller passordet ditt har blitt sendt til deg via e-post."
    redirect_to jobs_path
  else
    flash.now[:danger] = "Epostaddressen er ugyldig"
    render :new
  end
end

def edit
  #see before action code
end


def update
 # see before action for missing code
 
  if params[:user][:password].empty?
    @user.errors.add(:password, "Må fylles ut")
    render :edit
  elsif @user.update_attributes(user_params)
    session[:user_id] = @user.id
    flash[:success] = "Tilbakestilling av passordet var vellykket."
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
      flash[:danger] = "E-post har ikke blitt aktivert enda"
      redirect_to jobs_path
    end
  end

  # Checks expiration of reset token.
  def check_expiration
    if @user.password_reset_expired?
      flash[:danger] = "Tilbakestillingsnøkkelen er utgått."
      redirect_to new_password_reset_url
    end
  end

  
end
