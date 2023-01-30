require 'byebug'
require 'json'

class ConfirmOrderController
  def initialize(get_user, get_order, notification_adapters)
    @get_user = get_user
    @get_order = get_order
    @notification_adapters = notification_adapters
  end

  def handle(user)
    user = @get_user.get
    order = @get_order.get
    @notification_adapters.map {|n| n.send(user, 'Your order will delivered soon') }
    
    return { status: 200 }
  end
end