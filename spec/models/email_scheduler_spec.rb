require 'rails_helper'
require 'factory_bot'
require './app/models/email_scheduler'

RSpec.describe EmailScheduler do
  describe '.send_emails' do
    let!(:user1) { FactoryBot.create(:user) }

    before do
      allow(EmailSchedulerMailer).to receive(:sample_email).and_return(double(deliver_now: true))
    end

    it 'sends emails to users with pending messages' do
      expect(EmailSchedulerMailer).to receive(:sample_email).with(user1.email, any_args)

      EmailScheduler.send_emails
    end
  end
end
