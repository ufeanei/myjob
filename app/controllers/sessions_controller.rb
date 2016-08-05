class SessionsController < ApplicationController

  def new 
    if logged_in?
      flash[:success] = "Du er logget inn"
      redirect_to jobs_path
    end
  end

  def create
    user = User.find_by(email: params[:email])
 
    if user && user.authenticate(params[:password])
      if user.confirmed?
        session[:user_id] = user.id
        params[:remember] == '1' ? remember(user) : forget(user) # this lin
        flash[:success] = "Du er nå logget inn"
        redirect_to jobs_path
      else
        message ="E-post er ikke bekreftet ennå."
        message+= "Sjekk e-posten din for en bekreftelseslenke"
        flash[:warning] = message
        redirect_to jobs_path
      end
    else
      flash[:danger] = "Epost eller passord er ugyldig."
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "Du er nå logget ut"
    redirect_to jobs_path
  end

  
end