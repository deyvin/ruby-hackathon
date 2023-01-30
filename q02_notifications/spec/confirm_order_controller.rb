require './src/main/factories/controllers/make_confirm_order_controller_factory'
require 'json'

describe 'confirm_order_controller_request' do
  it 'Should create and return order' do
    result = makeConfirmOrderControllerFactory({})
    expect(result[:status]).to eq(200)    
  end
end


