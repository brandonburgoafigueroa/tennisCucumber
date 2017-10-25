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
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para A" cuando comenzo la partida
            Then    Deberia mostrar marcador "5-0"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para A" cuando ya habia anotado dos puntos
            Then    Deberia mostrar marcador "30-0"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para A" cuando ya habia anotado tres puntos
            Then    Deberia mostrar marcador "40-0"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para A" cuando ya habia anotado cuatro puntos
            Then    Deberia mostrar marcador "Jugador A wins"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para A"
            And     presiono el boton "Punto para B"
            And     presiono el boton "Reset"
            Then    Deberia mostrar marcador "0-Iguales"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para A"
            And     presiono el boton "Punto para B"
            And     presiono el boton "Punto para B"
            And     presiono el boton "Punto para B"
            And     presiono el boton "Reset"
            Then    Deberia mostrar marcador "0-Iguales"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para B" cuando ya habia anotado un punto
            Then    Deberia mostrar marcador "0-15"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para B" cuando ya habia anotado dos puntos
            Then    Deberia mostrar marcador "0-30"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para B" cuando ya habia anotado tres puntos
            Then    Deberia mostrar marcador "0-40"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para B" cuando ya habia anotado cuatro puntos
            Then    Deberia mostrar marcador "Jugador B wins"

Scenario:
            Given   Visito la pagina del marcador
            When    presiono el boton "Reset"
            And     presiono el boton "Punto para A"
            And     presiono el boton "Punto para A"
            And     presiono el boton "Punto para A"
            And     presiono el boton "Punto para A"
            And     presiono el boton "Punto para B"
            And     presiono el boton "Punto para B"
            And     presiono el boton "Punto para B"
            And     presiono el boton "Punto para B"
            Then    Deberia mostrar marcador "Deuce"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para A"
Scenario:
            Given   Visito la pagina de marcador
            When    presiono el boton "Punto para B"
