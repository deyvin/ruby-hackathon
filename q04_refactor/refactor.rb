require './src/adapters/action01_adapter'
require './src/adapters/action02_adapter'
require './src/adapters/action03_adapter'
require './src/adapters/action04_adapter'
require './src/adapters/action05_adapter'

class Action
  ADAPTERS = {
    TIPO1: Action1Adapter.new,
    TIPO2: Action1Adapter.new,
    TIPO3: Action1Adapter.new,
    TIPO4: Action1Adapter.new,
    TIPO5: Action1Adapter.new
  }

  def initialize(type)
    @type = type
  end

  def call
    ADAPTERS[@type].perform
  end
end