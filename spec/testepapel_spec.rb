require_relative "./ferramentas/papel.rb"
require_relative "./ferramentas/caneta.rb"
require_relative "./ferramentas/lapiseira.rb"

describe Papel do
    
    before(:each) do
        @caneta_0 = Caneta.new("Preto brilhante", 0.5, true, false, 80.00, "BIC", true)
        @lapiseira_0 = Lapiseira.new("verde", 0.5, true, false, 15.99, "BIC")
    end

    it "Caso de teste: Validando a área do papel" do
        
        papel_0 = Papel.new(10,10,9.99)

        expect(papel_0.getArea()).to eql 100
    end

    it "Caso de teste: Validando casos inválidos da área do papel: Lado zero" do
        papel_0 = Papel.new(0,10,9.99)

        expect(papel_0.getArea()).to eql "ÁREA INVÁLIDA"
    end

    it "Caso de teste: Validando casos inválidos da área do papel: Altura zero" do
        papel_0 = Papel.new(10,0,9.99)

        expect(papel_0.getArea()).to eql "ÁREA INVÁLIDA"
    end

    it "Caso de teste: Validando a escrita no papel" do
        papel_0 = Papel.new(10,10,9.99)
    
        @lapiseira_0.escrever(papel_0, "ABACAXI COM VINHO", 7)

        expect(papel_0.getTextoContido()).to eql "ABACAXI COM VINHO"
    end     

#    it "Caso de teste: Validando a capacidade de escrita dada a área 1 -> 0 caracteres" do
#        papel_0 = Papel.new(1,1,9.99)
        
#        @lapiseira_0.escrever(papel_0, "abacaxi com vinho", 4)
        
#        expect(papel_0.getTextoContido()).to eql "ab"

#    end

#     it "Caso de teste: Validando a capacidade de escrita dada a área 10" do
#         papel_0 = Papel.new(10,10,9.99)
        
#         expect(papel_0.getTextoContido()).to eql "abacaxi com vinho"
#     end

#     it "Caso de teste: Validando a capacidade de escrita dada a área 100" do
#         papel_0 = Papel.new(10,10,9.99)
        
#         expect(papel_0.getTextoContido()).to eql "abacaxi com vinho"
#     end

    it "Caso de teste: Validando a condição --> papel novo" do
         
        papel_0 = Papel.new(10,10,9.99)

        expect(papel_0.getCondicao()).to eql "Novo"
     
    end

    it "Caso de teste: Validando a condição --> papel usado" do
         papel_0 = Papel.new(10,10,9.99)
         @lapiseira_0.escrever(papel_0, "ABACAXI COM VINHO", 7)
         
         expect(papel_0.getCondicao()).to eql "Usado"
    end
    
 end