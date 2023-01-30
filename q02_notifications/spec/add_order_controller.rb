require './src/main/factories/controllers/make_add_order_controller_factory'
require 'json'

describe 'add_order_controller_request' do
  it 'Should create and return order' do
    result = makeAddOrderControllerFactory({'product_id' => '1'})
    expect(result[:status]).to eq(200)    
  end

  it 'Should create order with pending status' do
    result = makeAddOrderControllerFactory({'product_id' => '1'})
    expect(JSON.parse(result[:body])['status']).to eq('pending')
  end
end


