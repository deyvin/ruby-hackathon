require './src/domain/usecases/add_file.rb'

class DbAddFile
  include AddFile
  def initialize(add_file_repository)
    @add_file_repository = add_file_repository
  end

  def add(format, content)
    @add_file_repository.add(format, content)
  end
end