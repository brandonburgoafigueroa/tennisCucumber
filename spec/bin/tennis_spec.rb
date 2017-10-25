require './lib/bin/tennis.rb'

describe Tennis do
    before(:each) do
        @tennis=Tennis.new
        @tennis.iniciarJuego
    end
end
