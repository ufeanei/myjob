class UserMailer < ActionMailer::Base

	def confirm_email(email, body)
		@email = email
		@body = body
		mail(from: email, subject: 'Confirm your email')
	end

end
