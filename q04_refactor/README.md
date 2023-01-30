[QUESTÃO 4]Em uma situação que temos múltiplos ifs encadeados, faça uma refatoração para deixar o código mais fácil para dar manutenção. Exemplo:

class Action
def initialize(type)
@type = type
end

def call
if @type == "TIPO1"
puts "Executa ação TIPO1"
elsif @type == "TIPO2"
puts "Executa ação TIPO2"
elsif @type == "TIPO3"
puts "Executa ação TIPO3"
elsif @type == "TIPO4"
puts "Executa ação TIPO4"
elsif @type == "TIPO5"
puts "Executa ação TIPO5"
elsif @type == "TIPO6"
puts "Executa ação TIPO6"
end
end
end
This question is required.*
