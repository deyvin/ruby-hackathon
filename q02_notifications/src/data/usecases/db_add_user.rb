
class DbAddUser  
  def initialize(add_user_repository)
    @add_user_repository = add_user_repository
  end

  def add(user_params)
    @add_user_repository.add(user_params)
  end
end