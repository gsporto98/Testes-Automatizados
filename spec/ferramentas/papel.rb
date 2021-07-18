require_relative "./caneta.rb"
require_relative "./lapiseira.rb"


class Papel

    attr_accessor :dimLado, :dimAltura, :preco, :condicao, :textoContido
    def initialize(dimLado, dimAltura, preco)
        setDimLado(dimLado)
        setDimAltura(dimAltura)
        setPreco(preco)
        setCondicao("Novo")
        setTextoContido(nil)
    
    end


    #Getters

        def getDimLado()
            return dimLado
        end

        def getDimAltura()
            return dimAltura
        end

        def getPreco()
            return preco
        end

        def getCondicao()
            return condicao
        end

        def getTextoContido()
            return textoContido
        end
    
    #end

    #Setters

        def setDimLado(dimLado) 
            self.dimLado = dimLado
        end

        def setDimAltura(dimAltura)
            self.dimAltura = dimAltura
        end

        def setPreco(preco)
            self.preco = preco
        end

        def setCondicao(condicao)
            self.condicao = condicao
        end

        def setTextoContido(textoContido)
            self.textoContido = textoContido
            if (getTextoContido() !=nil)
                setCondicao("Usado")
            else
                setCondicao("Novo")
            end
        end

    #end

    def getArea()
        a = getDimLado()*getDimAltura()
        if(a==0)
            return getArea = "ÁREA INVÁLIDA"
        else
            return a
        end
    end

end
