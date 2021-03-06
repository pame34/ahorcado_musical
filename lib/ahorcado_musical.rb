class AhorcadoMusical
    
    IMAGENES = ["https://dl.dropboxusercontent.com/s/sng5l03ogo7q39j/0.jpg",
                "https://dl.dropboxusercontent.com/s/ayil63s5okmnnd3/1.png",
                "https://dl.dropboxusercontent.com/s/nhr7d121icunltn/2.png",
                "https://dl.dropboxusercontent.com/s/hotmrmd7bbzx88o/3.png",
                "https://dl.dropboxusercontent.com/s/6dslzamevducwr2/4.png",
                "https://dl.dropboxusercontent.com/s/vj35t13lg3uvf69/5.png",
                "https://dl.dropboxusercontent.com/s/vg6qgp9jtfqrnw5/6.png",
                "https://dl.dropboxusercontent.com/s/v0wtzya3fdkfsl7/7.png"]

    
    def initialize textoAdivinar = "CHANTAJE"
        @textoAdivinar = textoAdivinar
        @cantidadVidas = 7
        @imagen = IMAGENES[@cantidadVidas - @cantidadVidas]
        texto=""
        
        for i in 0..(@textoAdivinar.length-1)
        texto = texto + "-"
        end
        
        @MensajeDeValidacion = texto
        
    end
    
    
    def adivinacion
        if @cantidadVidas==0
            "AHORCADO"
        elsif @MensajeDeValidacion=="GANASTE"
            "GANASTE"
        else
            @MensajeDeValidacion
        end
    end
    
    def cantidadVidas
        @cantidadVidas
    end
    
    def imagenActual
       @imagen
    end
    
    def validacionLetra letra="A"
       
        if @cantidadVidas==0
            @MensajeDeValidacion = "AHORCADO"
        else
        
            resto=-1
            for i in 0..(@textoAdivinar.length-1)
                
                if @textoAdivinar[i, 1] == letra
                    @MensajeDeValidacion[i, 1] = letra
                    resto=0
                end
            end
            
            @cantidadVidas+=resto
            
            @imagen = IMAGENES[7-@cantidadVidas]
        
        end
        
        if(@MensajeDeValidacion == @textoAdivinar)
            @MensajeDeValidacion = "GANASTE"
        end
        
        @MensajeDeValidacion 
    end
end