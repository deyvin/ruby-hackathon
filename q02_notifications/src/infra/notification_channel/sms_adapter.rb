require './src/data/protocols/notification_channel'

class SmsAdapter
  include NotificationChannel
  def send(recipient, message)
    return {
      success: true,
      message: "Email deliveried to #{recipient}"
    }
  end
end