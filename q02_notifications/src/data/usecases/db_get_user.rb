
class DbGetUser  
  def initialize(user_repository)
    @user_repository = user_repository
  end

  def get
    @user_repository.get
  end
end