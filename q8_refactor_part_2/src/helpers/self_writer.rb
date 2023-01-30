class SelfWriter
  def initialize(adapter)
    @content = content
  end

  def perform
    File.write("file.#{@adapter.format.to_s}", @adapter.content)
  end
end