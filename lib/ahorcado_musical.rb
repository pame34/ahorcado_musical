class AhorcadoMusical
    
    def initialize textoAdivinar = "CHANTAJE"
        @textoAdivinar = textoAdivinar
        @MensajeDeValidacion = ""
        
        texto = ""
        for i in 0..(@textoAdivinar.length)
            texto = texto + "_" + " "
        end
        @MensajeDeValidacion = texto
    end
    
    def adivinacion
        @MensajeDeValidacion
    end
        
    
    def validacionLetra
       @MensajeDeValidacion =  "_ _ _ A"
    end
    
end