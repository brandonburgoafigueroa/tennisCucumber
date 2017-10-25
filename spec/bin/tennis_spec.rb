require './lib/bin/tennis.rb'

describe Tennis do
    before(:each) do
        @tennis=Tennis.new
        @tennis.iniciarJuego
    end
    it "Si comenzo el juego debe devolver el resultado 0-Iguales" do
        expect(@tennis.score()).to eq "0-Iguales"
    end
    it "Si jugador A anota 1 vez resultado 15-0" do
       @tennis.anotarPunto("A")
       expect(@tennis.score()).to eq "15-0"
    end
    it "Si jugador A anota 2 veces resultado 30-0" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        expect(@tennis.score()).to eq "30-0"
    end
    it "Si jugador A anota 3 veces resultado 40-0" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        expect(@tennis.score()).to eq "40-0"
    end
    it "Si jugador A gana el juego debe mostrar jugador A wins" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        expect(@tennis.score()).to eq "Jugador A wins"
    end
    it "Si jugador A anota 1 vez al igual que jugador B resultado 15-Iguales" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("B")
        expect(@tennis.score()).to eq "15-Iguales"
    end
    it "Si jugador A anota 3 veces y el jugador B anota 2 veces resultado 40-30" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        expect(@tennis.score()).to eq "40-30"
    end
    it "Si jugador A anota 3 veces al igual que el jugador B debe mostrar Deuce" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        expect(@tennis.score()).to eq "Deuce"
    end
    it "Si jugador A anota 4 veces y el jugador B 3 veces debe mostrar Jugador A en ventaja" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        expect(@tennis.score()).to eq "Jugador A en ventaja"
    end
    it "Si jugador A anota 3 veces y el jugador B 4 veces debe mostrar Jugador B en ventaja" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        expect(@tennis.score()).to eq "Jugador B en ventaja"
    end
    it "Si jugador A anota 5 veces y el jugador B 3 veces debe mostrar Jugador A wins" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        expect(@tennis.score()).to eq "Jugador A wins"
    end
    it "Si jugador A anota 3 veces y el jugador B 5 veces debe mostrar Jugador B wins" do
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("A")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        @tennis.anotarPunto("B")
        expect(@tennis.score()).to eq "Jugador B wins"
    end
end

