require 'rspec/autorun'
require_relative 'json_adapter'

describe 'json_adapter' do
  it 'Should write json file' do
    result = JsonAdapter.new
    expect(result.render({name: 'deyvid'})).to eq("{\"name\":\"deyvid\"}")
  end
end
