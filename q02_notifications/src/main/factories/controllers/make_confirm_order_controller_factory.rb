require './src/infra/db/cache/user_cache_repository'
require './src/data/usecases/db_get_user'
require './src/infra/db/cache/order_cache_repository'
require './src/data/usecases/db_get_order'
require './src/presentation/controllers/confirm_order_controller'
require './src/infra/notification_channel/email_adapter'
require './src/infra/notification_channel/sms_adapter'
require './src/infra/notification_channel/whatsapp_adapter'

def makeConfirmOrderControllerFactory(params)
  user_cache_repository = UserCacheRepository.new
  make_db_get_user = DbGetUser.new(user_cache_repository)

  order_cache_repository = OrderCacheRepository.new
  make_db_get_order = DbGetUser.new(order_cache_repository)

  notification_adapters = []
  notification_adapters << EmailAdapter.new
  notification_adapters << SmsAdapter.new
  notification_adapters << WhatsappAdapter.new
  return ConfirmOrderController.new(make_db_get_user, make_db_get_order, notification_adapters).handle(params)
end