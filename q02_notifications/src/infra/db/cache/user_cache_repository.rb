require 'mini_cache'

class UserCacheRepository 
  def add(user_data)
    store = MiniCache::Store.new 
    store.set('user', user_data)
    store.get('user')
  end

  def get
    store = MiniCache::Store.new
    store.get('user')
  end
end