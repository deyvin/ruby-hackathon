require 'mini_cache'

class OrderCacheRepository 
  def add(order_data)
    store = MiniCache::Store.new 
    store.set('order', order_data)
    store.get('order')
  end

  def get
    store = MiniCache::Store.new
    store.get('order')
  end
end