require './src/data/usecases/db_add_file.rb'
require './src/data/protocols/db/file/add_file_repository'

def make_db_add_file
  file_sqlite_repository = new FileCacheRepository()
  return new DbAddFile(file_sqlite_repository)
end