Feature:    Como jugador
            Quiero que se me muestre el marcador
            Para poder llevar conteo de los puntos que anote.
Scenario:
            Given   Visito la pagina de marcador
            Then    Deberia mostrar marcador de jugador A "0"

Scenario:
            Given   Visito la pagina del marcador
            Then    Deberia mostrar nombre de jugador "Jugador A"
Scenario:
            Given   Visito la pagina del marcador
            Then    Deberia mostrar nombre de jugador "Jugador A"
            And     Deberia mostrar marcador de jugador A "0"
Scenario:
            Given   Visito la pagina del marcador
            Then    Deberia mostrar nombre de jugador "Jugador B"
Scenario:
            Given   Visito la pagina de marcador
            Then    Deberia mostrar marcador de jugador B "0"