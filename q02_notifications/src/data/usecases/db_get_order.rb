class DbGetOrder  
  def initialize(order_repository)
    @order_repository = order_repository
  end

  def get
    @order_repository.get
  end
end