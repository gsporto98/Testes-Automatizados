class Ferramentas 
    attr_accessor :cor, :ponta, :tampa, :botao, :preco, :marca, :pressaoEscrita
    def initialize(cor, ponta, tampa, botao, preco, marca)
        self.cor = cor
        self.ponta = ponta
        self.tampa = tampa  
        self.botao = botao  
        self.preco = preco
        self.marca = marca
        self.pressaoEscrita = 0
    end

    def getCor()
        return self.cor
    end

    def setCor(cor)
        self.cor= cor
    end

    def getPonta()
        return self.ponta
    end

    def setPonta(ponta)
        self.ponta = ponta
    end

    def getTampa()
        return self.tampa
    end

    def setTampa(tampa)
        self.tampa = tampa
    end

    def getBotao()
        return self.botao
    end

    def setBotao(botao)
        self.botao = botao
    end

    def getPonta()
        return self.ponta
    end

    def setPonta(ponta)
        self.ponta = ponta
    end

    def getPreco()
        return self.preco
    end

    def setPreco(preco)
        self.preco = preco
    end

    def getMarca()
        return self.marca
    end

    def setMarca(marca)
        self.marca = marca
    end

    def getpressaoEscrita()
        return self.pressaoEscrita
    end

    def setpressaoEscrita(pressaoEscrita)
        self.pressaoEscrita= pressaoEscrita
    end   

    def escrever(texto)
        if (getpressaoEscrita() < 10 && getpressaoEscrita() > 5)
            return texto.upcase()
        elsif (getpressaoEscrita() <=5 && getpressaoEscrita() > 0)
            return texto
        end
    end

end