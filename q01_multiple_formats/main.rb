require 'sinatra'
require './src/main/factories/controllers/make_add_file_controler_factory'

post '/file' do
  data = JSON.parse request.body.read
  add_file_request = makeAddFileControllerFactory(data)
  status add_file_request[:status]
  content_type :json
  add_file_request[:body]
end
