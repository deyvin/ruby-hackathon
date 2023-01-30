require 'sinatra'
require './src/main/factories/controllers/make_add_user_controller_factory'
require './src/main/factories/controllers/make_add_order_controller_factory'
require './src/main/factories/controllers/make_confirm_order_controller_factory'

post '/add-user' do
  data = JSON.parse request.body.read
  add_user_request = makeAddUserControllerFactory(data)
  status add_user_request[:status]
  content_type :json
  add_user_request[:body]
end

post '/add-order' do
  data = JSON.parse request.body.read
  add_order_request = makeAddOrderControllerFactory(data)
  status add_order_request[:status]
  content_type :json
  add_order_request[:body]
end

post '/confirm-order' do
  data = JSON.parse request.body.read
  add_order_request = makeConfirmOrderControllerFactory(data)
  status add_order_request[:status]
  content_type :json
  add_order_request[:body]
end

