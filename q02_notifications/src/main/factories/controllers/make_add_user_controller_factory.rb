require './src/infra/db/cache/user_cache_repository'
require './src/data/usecases/db_add_user'
require './src/presentation/controllers/add_user_controller'

def makeAddUserControllerFactory(params)
  user_cache_repository = UserCacheRepository.new
  make_db_add_user = DbAddUser.new(user_cache_repository)
  return AddUserController.new(make_db_add_user).handle(params)
end