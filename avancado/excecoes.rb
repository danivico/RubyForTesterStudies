# begin
#     # Tentar alguma coisa
#     file = File.open('./ola')
#     if file
#         puts file.read
#     end
# rescue StandardError => e
#     # Obter o possível erro
#     puts e.message
#     puts e.backtrace
# end

def soma(num1, num2)
    num1 + num2
rescue StandardError
    puts 'Erro ao executar a soma.'
end

soma('10', 5)