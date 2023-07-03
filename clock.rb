require 'clockwork'
require './app/models/email_scheduler'
require './config/boot'
require './config/environment'

module Clockwork
  every(5.second, 'email_scheduler.send_emails') do
    EmailScheduler.send_emails
  end
end
