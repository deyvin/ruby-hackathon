class FormatValidator
  def initialize(formats_accepteds)
    @formats_accepteds = formats_accepteds
  end

  def is_valid?(format)
    @formats_accepteds.include? format
  end
end