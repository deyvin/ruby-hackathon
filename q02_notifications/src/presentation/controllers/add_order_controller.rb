
require 'byebug'
require 'json'

class AddOrderController
  def initialize(add_order)
    @add_order = add_order
  end

  def handle(order_params)
    body = @add_order.add(order_params)
    return { status: 200, body: body.to_json }
  end
end