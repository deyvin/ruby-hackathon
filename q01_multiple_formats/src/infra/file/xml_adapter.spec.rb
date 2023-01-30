require 'rspec/autorun'
require_relative 'xml_adapter'

describe 'json_adapter' do
  it 'Should write json file' do
    result = XmlAdapter.new
    expect(result.render({name: 'deyvid'})).to eq('<name>deyvid</name>')
  end
end
