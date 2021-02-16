class UserMailer < ApplicationMailer
  default from: 'trucpouet@yopmail.com'

  def welcome_email(user)

    @user= user
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end
end
