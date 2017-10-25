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
end

