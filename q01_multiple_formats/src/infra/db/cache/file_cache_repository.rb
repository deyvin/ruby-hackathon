require './src/data/protocols/db/file/add_file_repository'
require 'mini_cache'

class FileCacheRepository 
  include AddFileRepository

  def add(format, content)
    store = MiniCache::Store.new 
    store.set('format', format)
    store.set('content', content)
    {
      format: store.get('format'),
      content: store.get('content')
    }
  end
end