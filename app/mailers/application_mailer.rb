class ApplicationMailer < ActionMailer::Base
  default from: 'app@maildev.dev'
  layout 'mailer'
end
