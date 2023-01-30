require 'byebug'
require 'json'

class AddUserController
  def initialize(add_user)
    @add_user = add_user
  end

  def handle(user_params)
    body = @add_user.add(user_params)
    return { status: 200, body: body.to_json }
  end
end