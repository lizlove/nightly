# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#configure ActionMailer for MailGun
ActionMailer::Base.smtp_settings = {
  :port           => 587,
  :address        => "smtp.mailgun.org",
  :domain         => ENV['domain'],
  :user_name      => ENV['username'],
  :password       => ENV['password'],
  :authentication => :plain,
}

