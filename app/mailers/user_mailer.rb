class UserMailer < ApplicationMailer
  default "Content-Transfer-Encoding" => 'quoted-printable'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @greeting = "Hi"
    @user = user
    mail.transport_encoding = "quonted_printable"
    mail to: user.email, subject: 'Account activation' 
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    mail.transport_encoding = "quonted_printable"
    mail to: user.email, subject: "Password reset"
  end
end
