class Restaurante
  def initialize (nome)
    puts "Criando um novo Restaurante: #{nome}"
    @@total ||= 0
    @@total = @@total + 1
    puts "Restaurantes criado: #{@@total}"
  end
  def self.relatorio
    puts "Foram criados #{@@total} restaurantes!"
  end
end
