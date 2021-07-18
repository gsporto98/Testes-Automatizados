require_relative './ferramentas.rb'

class Lapiseira < Ferramentas
    attr_accessor :cor, :ponta, :tampa, :botao, :preco, :marca, :pressaoEscrita, :grafite, :qntGrafite
    def initialize(cor, ponta, tampa, botao, preco, marca)
        super(cor, ponta, tampa, botao, preco, marca)
        setGrafite(false)
        setQntGrafite(0)
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

    def setQntGrafite(qntGrafite)
        self.qntGrafite = qntGrafite
        if (qntGrafite > 0)
            setGrafite(true)
        end
    end

    def setGrafite(grafite)
        self.grafite = grafite
    end

    def getQntGrafite()
        return qntGrafite
    end

    def getGrafite()
        return grafite
    end 

    def pegarDaReserva()
        if (getQntGrafite() > 0)
            setQntGrafite(getQntGrafite()-1)
        else 
            puts "não tenho mais grafite"
        end
    end

    def quebrarGrafite()
        pegarDaReserva()
    end

    def escrever(obj_papel, texto, pressaoAtual)
        if (pressaoAtual > 10)
            quebrarGrafite()
        elsif (pressaoAtual < 10)
            setpressaoEscrita(pressaoAtual)
            textoTemporario = super(texto) #Ferramentas.escrever()
        end 
        setpressaoEscrita(0)
        obj_papel.setTextoContido(textoTemporario)
    end

end