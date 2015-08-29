class NightlyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.nightly_mailer.sponsor_add.subject
  #
  def sponsor_add(user)
    @user = user
    @email = @user.email
    mail to: @user.sponsor_email, subject: "You have been registered as a Nightly Review recipient."
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.nightly_mailer.user_register.subject
  #
  def user_register(user)
    @user = user
    @sponsor = @user.sponsor_email
    mail to: @user.email, subject: "You have registered for Nightly"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.nightly_mailer.sponsor_nightly.subject
  #
  def sponsor_nightly(post)
    @post = post
    mail to: @user.sponsor_email, subject: "Nightly review"
  end
end
