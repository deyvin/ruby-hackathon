require './src/main/factories/controllers/make_add_file_controler_factory'
require 'json'

describe 'json_adapter' do
  it 'Should write json file' do
    result = makeAddFileControllerFactory({'format' => 'json', 'content' => { "name": "deyvid"}})
    expect(result[:status]).to eq(200)    
  end

  it 'Should write xml file' do
    result = makeAddFileControllerFactory({'format' => 'xml', 'content' => { "name": "deyvid"}})
    expect(result[:status]).to eq(200)
  end

  it 'Should return error with invalid format' do
    result = makeAddFileControllerFactory({'format' => 'xls', 'content' => "{\"name\":\"deyvid\"}"})
    expect(result[:status]).to eq(400)
  end
end


