# Preview all emails at http://localhost:3000/rails/mailers/nightly_mailer
class NightlyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/nightly_mailer/sponsor_add
  def sponsor_add
    NightlyMailer.sponsor_add
  end

  # Preview this email at http://localhost:3000/rails/mailers/nightly_mailer/user_register
  def user_register
    NightlyMailer.user_register
  end

  # Preview this email at http://localhost:3000/rails/mailers/nightly_mailer/sponsor_nightly
  def sponsor_nightly
    NightlyMailer.sponsor_nightly
  end

end
