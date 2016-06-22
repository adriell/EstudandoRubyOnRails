puts "Qual é o seu nome?"
nome = gets

puts "Qual foi a sua nota?"

nota = gets.to_i

if nota >= 7

	puts "#{nome}, Vc foi aprovado, parabéns!"

elsif nota > 5  and nota < 7
	puts "#{nome}, Vc está em recuperacao!"

	else 
		puts "#{nome}, infelizmente vc foi reprovado!"
	end


