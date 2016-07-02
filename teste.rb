class Turma
  def initialize
    @turma = []
  end
  def adiciona(*tur)
    for turma in tur
      @turma << tur
    end
  end
  def mostrar
    @turma.each do |tur|
      puts tur
    end
  end
end

tu = Turma.new

tu.adiciona  %w(Adriel Lucas da Silva Viana)
tu.mostrar
