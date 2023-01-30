class DbAddOrder  
  def initialize(add_order_repository)
    @add_order_repository = add_order_repository
  end

  def add(order_params)
    @add_order_repository.add(order_params.merge({ status: 'pending' }))
  end
end