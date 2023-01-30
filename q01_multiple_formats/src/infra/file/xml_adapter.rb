require './src/data/protocols/file/formater.rb'
require 'gyoku'

class XmlAdapter 
  include Formater
  def render(hash)
    # hash.to_xml(:root => 'customer')
    Gyoku.xml(hash)
  end
end