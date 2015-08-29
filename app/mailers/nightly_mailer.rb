class NightlyMailer < ApplicationMailer

  def sponsor_add(user)
    @user = user
    @email = @user.email
    mail to: @user.sponsor_email, subject: "You have been registered as a Nightly Review recipient."
  end

  def user_register(user)
    @user = user
    @sponsor = @user.sponsor_email
    mail to: @user.email, subject: "You have registered for Nightly"
  end

  def sponsor_nightly(post)
    @post = post
    mail to: @user.sponsor_email, subject: "Nightly review"
  end
end
