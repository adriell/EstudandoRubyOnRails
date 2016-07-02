class Franquia
	def initialize
		@restaurantes = []
	end
	def adiciona(*restaurantes)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end
	def mostra
		@restaurantes.each do |r|
			puts r.nome
		end
	end
	def relatorio
		@restaurantes.each do |r|
			yield r
		end
	end

end

class Restaurante
	attr_accessor :nome
	# def initialize(nome)
	# 	puts "Criando um novo restaurante: #{nome}"
	# 	@nome = nome
	# end
	#
	# def qualifica(msg="Obrigado!")
	# 	puts "A nota do #{@nome} foi #{@nota}. #{@msg}"
	# end

end


restaurante_um = Restaurante.new
restaurante_um.nome = "Atelie da Shyrlei"
restaurante_dois = Restaurante.new
restaurante_dois.nome = "Sabor de Mel"

franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois

franquia.relatorio do |r|
	puts "Restaurante cadastrado: #{r.nome}"
end
# franquia.mostra

# restaurante_um.nota = 10
# restaurante_dois.nota = 1
#
# restaurante_um.qualifica
# restaurante_dois.qualifica("Comida ruim!")
