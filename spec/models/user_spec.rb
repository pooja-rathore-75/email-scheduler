require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }

    it 'validates email format' do
      user = User.new(email: 'test@example')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include('is not a valid email address')
    end

    it 'validates the format of email' do
      should allow_value('test@example.com').for(:email)
      should allow_value('test.user@example.co').for(:email)
      should allow_value('test+user@example.io').for(:email)
    end
  end
end
