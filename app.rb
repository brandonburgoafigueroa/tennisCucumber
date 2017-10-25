require 'sinatra'
require './lib/bin/tennis.rb'

$PuntosA=0
$PuntosB=0

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
    $PuntosA=$PuntosA+1
    erb :marcador
end

post '/PuntoB' do
    $PuntosB=$PuntosB+1
    erb :marcador
end
