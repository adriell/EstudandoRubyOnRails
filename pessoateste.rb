class Pessoa
	def muda_nome(novo_nome)
		@nome = novo_nome
	end
	def diz_nome
		puts "Meu nome é #{@nome}"
	end
end

p = Pessoa.new
p.muda_nome "Adriel"
p.diz_nome
