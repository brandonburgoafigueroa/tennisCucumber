require './lib/bin/tennis.rb'

describe Tennis do
    before(:each) do
        @tennis=Tennis.new
        @tennis.iniciarJuego
    end
    it "Si comenzo el juego debe devolver el resultado 0-Iguales" do
        expect(@tennis.score()).to eq "0-Iguales"
       end
end

