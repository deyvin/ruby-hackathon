require './src/models/user'

class NewsletterController
  def initialize(notification_channels)
    @channels = notification_channels
  end

  def handle(params)
    user = User.new(params[:email], params[:phoone])
    @channels.map {|c| c.send(user, "I'm a message...")}
    
    return { status: 200 }
  end
end