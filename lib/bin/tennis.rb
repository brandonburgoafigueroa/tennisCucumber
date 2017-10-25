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
        if ganoAlguien
            return mostrarGanador
        else
            if anotoDespuesDeDeuce
                return mostrarJugadorEnVentaja
            else
                if es40iguales
                    return "Deuce"
                else
                    if sonIguales
                        return @tablaPuntaje[@puntosDeJugadorA]+"-Iguales"
                    else
                        return @tablaPuntaje[@puntosDeJugadorA]+"-"+@tablaPuntaje[@puntosDeJugadorB]
                    end
                end
            end
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
        if ganoA || ganoB
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
    def ganoB
        if @puntosDeJugadorB>3 && (@puntosDeJugadorA<3 || @puntosDeJugadorB-2==@puntosDeJugadorA)
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
    def anotoDespuesDeDeuce
        if menor>=3
            return true
        else
            return false
        end
    end
    def mayor
        if @puntosDeJugadorA>@puntosDeJugadorB
            return @puntosDeJugadorA
        else
            return @puntosDeJugadorB
        end
    end
    def menor
        if @puntosDeJugadorA>@puntosDeJugadorB
            return @puntosDeJugadorB
        else
            return @puntosDeJugadorA
        end
    end
    def mostrarJugadorEnVentaja
        if @puntosDeJugadorA>@puntosDeJugadorB
            return "Jugador A en ventaja"
        else if @puntosDeJugadorA<@puntosDeJugadorB
            return "Jugador B en ventaja"
            else
                return "Deuce"
        end
        end
    end
end