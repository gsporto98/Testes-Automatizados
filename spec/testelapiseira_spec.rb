require_relative "./ferramentas/lapiseira.rb"

describe Lapiseira do

    it "Caso de teste: Validando Atributo do Construtor da Lapiseira" do
        #Arrange
        lapiseira = Lapiseira.new("azul", 0.7, false, true, 19.99, "Cis")

        expect(lapiseira.getCor()).to eql "azul"
        expect(lapiseira.getPonta()).to eql 0.7
        expect(lapiseira.getTampa()).to eql false
        expect(lapiseira.getBotao()).to eql true
        expect(lapiseira.getPreco()).to eql 19.99
        expect(lapiseira.getMarca()).to eql "Cis"
        expect(lapiseira.getpressaoEscrita()).to eql 0
    
    end

    it "Caso de teste: Validando recarga da lapiseira" do
        
        #Arrange
        lapiseira = Lapiseira.new("verde", 0.5, true, false, 15.99, "BIC")

        #Act
        lapiseira.setQntGrafite(4)

        expect(lapiseira.getQntGrafite()).to eql 4  
        expect(lapiseira.getGrafite()).to eql true

    end

    it "Caso de teste: Validando quebrar grafite" do
        
        #Arrange
        lapiseira = Lapiseira.new("verde", 0.5, true, false, 15.99, "BIC")

        #Act
        lapiseira.setQntGrafite(4)
        resultado = lapiseira.escrever("texto exemplo", 13)

        expect(lapiseira.getQntGrafite()).to eql 3  
        expect(lapiseira.getGrafite()).to eql true

    end
    
end
