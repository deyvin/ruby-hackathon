puts "Qual arquivo você deseja salvar?"
puts "JSON"
puts "CSV"

option = gets

if option == "JSON"
  SelfWriter.new(JsonAdapter).perform
end

if option == "CSV"
  SelfWriter.new(XMLAdapter).perform
end