module Falante
  def falar
    'oi'
  end
end

class Pessoa
  include Falante
  attr_accessor :nome, :documento
end

class PessoaFisica < Pessoa

  def documento_valido?
    @documento.size == 11
  end
end
class PessoaJuridica < Pessoa

  def documento_valido?
    @documento.size == 14
  end
end
class Papagaio
  include Falante
  def falar
    'Grupar ' + super
  end
end
