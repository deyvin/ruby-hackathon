require './src/data/protocols/notification_channel'

class WhatsappAdapter
  include NotificationChannel
  def send(recipient, message)
    return {
      success: true,
      message: "Email deliveried to #{recipient}"
    }
  end
end