require './src/data/usecases/db_add_order'
require './src/infra/db/cache/order_cache_repository'
require './src/presentation/controllers/add_order_controller'

def makeAddOrderControllerFactory(params)
  order_cache_repository = OrderCacheRepository.new
  make_db_add_order = DbAddOrder.new(order_cache_repository)
  return AddOrderController.new(make_db_add_order).handle(params)
end