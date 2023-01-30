require './src/adapters/email_adapter'
require './src/adapters/sms_adapter'
require './src/controllers/newsletter_controller.rb'

def make_notification_controller_factory(params)
  adapters = []
  adapters << EmailAdapter.new
  adapters << SmsAdapter.new
  
  return NewsletterController.new(adapters).handle(params)
end