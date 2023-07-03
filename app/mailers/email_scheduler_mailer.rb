class EmailSchedulerMailer < ApplicationMailer
  # default from: 'vlovanshi@bestpeers.com'

  def sample_email(recipient_email, message)
    @message = message
    mail(to: recipient_email, subject: 'Email Scheduler')
  end
end
