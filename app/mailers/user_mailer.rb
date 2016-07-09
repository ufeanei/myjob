class UserMailer < ActionMailer::Base

  default from: 'ingensvar@frakt.no'

  def confirm_email(user)
    @user = user
    mail(to: user.email, subject: 'Bekreft Epost')
  end


  def reset_password(user, reset_token)
    @user = user
    @reset_token = reset_token
    mail(to: user.email, subject: "Tilbakestilling av passord")
  end

# send email to the helper. here @user is helper
  def invited_notice(application)
    @user = application.user 
    @application = application
    mail(to: application.user.email, subject: "Jobbeier har invitert deg til å hjelpe")
  end

# send review notice to jobowner. Here @user is the jobowner
  def review_notice(application)
   @user = application.job.user
   @application = application
   mail(to: application.job.user.email, subject: "Vennligst, Fortell oss din opplevelse med hjelper #{@application.user.first_name}") 
  end

  def review_added(application)
    @application = application
    mail(to: application.user.email, subject: "Du har en ny anmeldelse fra #{@application.job.user.first_name}")
  end

end
