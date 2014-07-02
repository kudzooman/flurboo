class UserMailer < ActionMailer::Base
  default from: "app26824554.mailgun.org"

def welcome_email(user)
  @user = user
  @url  = 'http://flurboo.herokuapp.com/login'
  mail(to: @user.email, subject: 'Welcome to Flurboo')
end

end
