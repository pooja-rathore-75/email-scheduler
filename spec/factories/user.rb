FactoryBot.define do
  factory :user do
    email { 'user@example.com' }
    received_messages { '' }
  end
end
