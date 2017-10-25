require 'sinatra'
require './lib/bin/tennis.rb'

$PuntosA=0
$PuntosB=0
$tennis=Tennis.new
$tennis.iniciarJuego

get '/' do
    "Hello World"
end

get '/marcador' do
    
  erb :marcador
end

post '/marcador' do
    erb :marcador
end

post '/PuntoA' do
    $tennis.anotarPunto("A")
    erb :marcador
end

post '/PuntoB' do
    $tennis.anotarPunto("B")
    erb :marcador
end

post '/Reset' do
    $tennis.iniciarJuego
    erb :marcador
end