class UserMailer < ActionMailer::Base

  default from: 'example@yahoo.com'

  def confirm_email(user)

    @user = user
    mail(to: user.email, subject: 'Confirm your email')
  end


  def reset_password(user)
    @user = user

    mail(to: user.email, subject: "Password reset")

  end

end
