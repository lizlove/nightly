# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#configure ActionMailer for SendGrid
ActionMailer::Base.smtp_settings = {
  :user_name => 'elovero',
  :password => '4$undaY17',
  :domain => 'my-nightly.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}