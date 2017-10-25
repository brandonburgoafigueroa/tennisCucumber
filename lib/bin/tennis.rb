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
        return "0-Iguales"
    end
end