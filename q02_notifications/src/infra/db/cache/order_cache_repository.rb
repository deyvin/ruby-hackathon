class OrderCacheRepository
  def add(order)
    raise 'Not is Order object' unless order.class 'Order'
  end
end