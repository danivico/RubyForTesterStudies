# Classe possui atributos e métodos
# Características e ações

# Carro (Nome, Marca, Modelo, Cor, Quantidade de Portas, etc...)
# ações: Ligar, Businar, Parar, Etc...

class Carro
    attr_accessor :nome
    def ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end


end

civic = Carro.new
civic.nome = 'Civic'
puts civic.nome
civic.ligar
