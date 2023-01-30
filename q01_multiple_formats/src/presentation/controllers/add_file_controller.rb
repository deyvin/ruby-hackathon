require './src/infra/file/json_adapter'
require './src/infra/file/xml_adapter'
require 'byebug'
require 'json'

class AddFileController
  FORMATERS = {
    json: JsonAdapter.new,
    xml: XmlAdapter.new
  }
  
  def initialize(add_file, format_validator)
    @add_file = add_file
    @format_validator = format_validator
  end

  def handle(params)
    unless @format_validator.new(FORMATERS.keys).is_valid? params['format'].to_sym
      return { status: 400, body: {error: "Format #{params['format']} is not compatible"}.to_json }
    end
    body = @add_file.add(params['format'], adapter(params['format']).render(params['content']))
    return { status: 200, body: body.to_json }
  end

  private
    def adapter(format)
      FORMATERS[format.to_sym]
    end
end