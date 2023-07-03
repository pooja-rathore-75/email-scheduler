require 'clockwork'
require 'byebug'
require './app/models/email_scheduler'
require './config/boot'
require './config/environment'

module Clockwork
  every(1.minute, 'email_scheduler.send_emails') do
    EmailScheduler.send_emails
  end
end
