require './src/data/protocols/file/formater.rb'
require 'json'

class JsonAdapter 
  include Formater
  def render(hash)
    hash.to_json
  end
end