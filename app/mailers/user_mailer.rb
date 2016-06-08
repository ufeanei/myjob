class UserMailer < ActionMailer::Base

  default from: 'example@yahoo.com'

  def confirm_email(user)
    @user = user
    mail(to: user.email, subject: 'Confirm your email')
  end


  def reset_password(user, reset_token)
    @user = user
    @reset_token = reset_token
    mail(to: user.email, subject: "Password reset")
  end

# send email to the helper. here @user is helper
  def invited_notice(application)
    @user = application.user 
    @application = application
    mail(to: application.user.email, subject: "Jobeier inviterer deg på Frakt jobb")
  end

# send review notice to jobowner. Here @user is the jobowner
  def review_notice(application)
   @user = application.job.user
   @application = application
   mail(to: application.job.user.email, subject: "Vennlist, review your hjelper #{@application.user.first_name} on Frakt") 
  end

end
