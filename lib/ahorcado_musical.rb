class AhorcadoMusical
    
    IMAGENES = ["https://dl.dropboxusercontent.com/s/ayil63s5okmnnd3/1.png",
                "https://dl.dropboxusercontent.com/s/nhr7d121icunltn/2.png",
                "https://dl.dropboxusercontent.com/s/hotmrmd7bbzx88o/3.png",
                "https://dl.dropboxusercontent.com/s/6dslzamevducwr2/4.png",
                "https://dl.dropboxusercontent.com/s/vj35t13lg3uvf69/5.png",
                "https://dl.dropboxusercontent.com/s/vg6qgp9jtfqrnw5/6.png",
                "https://dl.dropboxusercontent.com/s/v0wtzya3fdkfsl7/7.png"]

    
    def initialize textoAdivinar = "CHANTAJE"
        @textoAdivinar = textoAdivinar
        @cantidadVidas = 7
        @texto = ""
        @letra = ""
    end
    
    def imagenActual
       IMAGENES[@cantidadVidas - 7]
    end
    
    def adivinacion
        
        for i in 0..(@textoAdivinar.length)
            guion = "_"
            
            puts @textoAdivinar[i, 1]
            if @textoAdivinar[i, 1] == @letra
                guion = @letra
            end
            @texto = @texto + guion + " "
        end
        
        @texto
    end
end