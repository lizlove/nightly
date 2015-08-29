class ApplicationMailer < ActionMailer::Base
  default from: "info@my-nightly.com"
  layout 'mailer'
end
