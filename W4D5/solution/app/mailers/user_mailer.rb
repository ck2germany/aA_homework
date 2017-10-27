class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'http://example'
    mail(to: "test123@nowhere.com", subject: 'Welcome to 99 Cats!')
  end
end
