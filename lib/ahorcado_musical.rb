class AhorcadoMusical
    
    def initialize textoAdivinar = "CHANTAJE"
        @textoAdivinar = textoAdivinar
    end
    
    def adivinacion
        texto = ""
        for i in 0..(@textoAdivinar.length)
            texto = texto + "_" + " "
        end
        texto
    end
        
    
    
end