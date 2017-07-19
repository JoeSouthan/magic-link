class LoginMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.login_mailer.magic.subject
  #
  def magic(user)
    mail to: user.email, subject: "Login?"
  end
end
