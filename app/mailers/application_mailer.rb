class ApplicationMailer < ActionMailer::Base
  default from: 'app@maildev.dev'
  layout 'mailer'

  def contact_email(email, name, message)
    @email = email
    @message = message
    mail(to: 'vitalmarche@gmail.com', subject: name + ' veut contacter VitalMarche')
  end

end
