require_relative "./ferramentas/caneta.rb"

describe Caneta do

    it "Caso de teste: Validando Atributos do Construtor da Caneta" do
        #Arrange
        caneta = Caneta.new("verde", 0.5, true, false, 15.99, "BIC", true)

        expect(caneta.getCor()).to eql "verde"
        expect(caneta.getPonta()).to eql 0.5
        expect(caneta.getTampa()).to eql true
        expect(caneta.getBotao()).to eql false
        expect(caneta.getPreco()).to eql 15.99
        expect(caneta.getMarca()).to eql "BIC"
        expect(caneta.getpressaoEscrita()).to eql 0
        expect(caneta.getTinteiro()).to eql true    
    
    end

    it "Caso de teste: Validando escrita fraca da caneta" do
        
        #Arrange
        caneta = Caneta.new("verde", 0.5, true, false, 15.99, "BIC", true)

        #Act

        resultado = caneta.escrever("texto exemplo", 5)
        
        expect(resultado).to eql ("texto exemplo")
        expect(caneta.getpressaoEscrita()).to eql 0

    end

    it "Caso de teste: Validando escrita forte da caneta" do
        
        #Arrange
        caneta2 = Caneta.new("verde", 0.5, true, false, 15.99, "BIC", true)

        #Act

        resultado = caneta2.escrever("texto exemplo", 6)
        
        expect(resultado).to eql ("TEXTO EXEMPLO")
        expect(caneta2.getpressaoEscrita()).to eql 0

    end


    
    
end