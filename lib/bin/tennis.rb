class Tennis
    def iniciarJuego
        @nombreJugadorA = "A"
        @nombreJugadorB = "B"
        @puntosDeJugadorA = 0
        @puntosDeJugadorB = 0
        @tablaPuntaje=["0", "15", "30", "40"]
    end
    def anotarPunto(nombreDelJugador)
        if (nombreDelJugador == @nombreJugadorA)
            @puntosDeJugadorA += 1
        else
            @puntosDeJugadorB += 1
        end
    end
    def score()
        return mostrarPuntaje
    end
    def mostrarPuntaje
        if sonIguales
            return @tablaPuntaje[@puntosDeJugadorA]+"-Iguales" 
        else
            return @tablaPuntaje[@puntosDeJugadorA]+"-"+"0"
        end
    end
    def sonIguales
        if (@puntosDeJugadorA==@puntosDeJugadorB)
            return true
        else
            return false
        end
    end
end