require_relative './ferramentas.rb'

class Caneta < Ferramentas
    attr_accessor :cor, :ponta, :tampa, :botao, :preco, :marca, :pressaoEscrita, :tinteiro
    def initialize(cor, ponta, tampa, botao, preco, marca, tinteiro)
        super(cor, ponta, tampa, botao, preco, marca)
        setTinteiro(tinteiro)
    end

    def getTinteiro()
        return self.tinteiro
    end

    def setTinteiro(tinteiro)
        self.tinteiro = tinteiro
    end

    def jorrarTinta()
        puts "Ops! Sujou de tinta"
    end

    def escrever(texto, pressaoAtual)
        if (pressaoAtual > 10)
            jorrarTinta()
        elsif (pressaoAtual < 10)
            setpressaoEscrita(pressaoAtual)
            textoTemporario = super(texto) #Ferramentas.escrever()
        end 
        setpressaoEscrita(0)
        return textoTemporario
    end


end