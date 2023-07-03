module EmailScheduler
  def self.send_emails
    users = User.all

    messages = [
      "Message 1",
      "Message 2",
      "Message 3",
      "Message 4",
      "Message 5",
      "Message 6",
      "Message 7",
      "Message 8",
      "Message 9",
      "Message 10"
    ]

    users.each do |user|
      next if user.received_messages == messages.join(',')

      remaining_messages = messages - (user.received_messages.to_s.split(','))

      next if remaining_messages.empty?

      random_message = remaining_messages.sample
      user.update(received_messages: "#{user.received_messages},#{random_message}")
    end
  end
end


