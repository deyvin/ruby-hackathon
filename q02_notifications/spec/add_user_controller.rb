require './src/main/factories/controllers/make_add_user_controller_factory'
require 'json'

describe 'add_user_controller_request' do
  it 'Should create and return user' do
    result = makeAddUserControllerFactory({'name' => 'Deyvid', 'email' => 'deyvin@gmail.com', 'phone' => '22981691431'})
    expect(result[:status]).to eq(200)
  end
end


