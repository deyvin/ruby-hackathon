require './src/infra/db/cache/file_cache_repository'
require './src/data/usecases/db_add_file'
require './src/presentation/controllers/add_file_controller'
require './src/infra/validators/format_validator'

def makeAddFileControllerFactory(params)
  file_cache_repository = FileCacheRepository.new
  format_validator = FormatValidator
  make_db_add_file = DbAddFile.new(file_cache_repository)
  return AddFileController.new(make_db_add_file, format_validator).handle(params)
end