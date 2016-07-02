class AmigoOculto
  attr_accessor :resultado
  def initialize(participantes)
    @participantes = participantes
  end
  def sortear
    @resultado = {}

    @participantes.each do |nome|
      participante = nome
      ja_sorteados = @resultado.values
      restante     = @participantes - ja_sorteados - [participante]

      amigo_oculto = restante.shuffle.first

      @resultado[participante] = amigo_oculto
    end
  end
  def participantes
    @participantes
  end
  def participantes=(participantes)
    @participantes = participantes
    @resultado = {}
  end
  def inscrever (nome)
    if @resultado.any?c
      raise 'Chegou tarde demais !'
    end
    @participantes << nome
  end
  def revelar(nome)
    @resultado[nome]
    if nome != @participantes
      print "Participante não faz parte do amigo oculto".strip
    end
  end
end
