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
        if ganoAlguien
            respuesta=mostrarGanador
        else
           return mostrarPuntaje
        end
       
    end

    def mostrarPuntaje
        if sonIguales
            if es40iguales
                return "Deuce"
            else
                return @tablaPuntaje[@puntosDeJugadorA]+"-Iguales" 
            end
        else
            return @tablaPuntaje[@puntosDeJugadorA]+"-"+@tablaPuntaje[@puntosDeJugadorB]
        end
    end
    def sonIguales
        if (@puntosDeJugadorA==@puntosDeJugadorB)
            return true
        else
            return false
        end
    end
    def ganoAlguien
        if ganoA
            return true
        else
            return false
        end
    end
    def mostrarGanador
        if ganoA
            return "Jugador A wins"
        else
            return "Jugador B wins"
        end
    end
    
    def ganoA
        if @puntosDeJugadorA>3 && (@puntosDeJugadorB<3 || @puntosDeJugadorA-2==@puntosDeJugadorB)
           return true 
        else
            return false
        end
    end
    def es40iguales
        if (@puntosDeJugadorA==3 && @puntosDeJugadorB==3)
            return true
        else
            return false
        end
    end
end