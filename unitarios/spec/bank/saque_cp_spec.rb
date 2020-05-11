require_relative '../../app/bank'


describe ContaPoupanca do
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200)
            end
            it 'entao atualiza o saldo' do
                expect(@cp.saldo).to eql 798.00
            end
        end
    
        context 'quando o saldo é zero' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100.00)
            end
            it 'entao exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para Saque :('
            end
            it 'e o saldo final com zeros' do
                expect(@cp.saldo).to eql 0.00
            end
        end

        context 'quando o saldo e insuficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(100.00)
                @cp.saca(101.00)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para Saque :('
            end
            it 'e o saldo permanece ' do
                expect(@cp.saldo).to eql 100.00
            end
        end

        context 'quando o supera o limite de saque' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(701.00)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Limite maximo por saque e de 500'
            end
            it 'e o saldo permanece' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end
end