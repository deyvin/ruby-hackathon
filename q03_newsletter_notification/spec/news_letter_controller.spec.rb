require './src/factories/make_notification_controller_factory'

describe 'add_order_controller_request' do
  it 'Should create and return order' do
    result = make_notification_controller_factory({email: 'alice@example.com', phone: '55999999999'})
    expect(result[:status]).to eq(200)
  end
end


