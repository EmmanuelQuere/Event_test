class UserMailer < ApplicationMailer
  default from: 'no-replay@monsite.fr'

  def welcome_email(user)

    @user= user
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end
end
