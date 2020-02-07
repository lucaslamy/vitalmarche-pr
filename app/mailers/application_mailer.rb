class ApplicationMailer < ActionMailer::Base
  default from: 'contactvitalmarche@gmail.com'
  layout 'mailer'

  def contact_email(email, name, message)
    @email = email
    @message = message
    mail(to: 'contactvitalmarche@gmail.com', subject: name + ' veut contacter VitalMarche')
  end

end
