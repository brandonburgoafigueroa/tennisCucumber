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
    $PuntosA=$PuntosA+1
    $PuntosB=$PuntosB+1
    erb :marcador
  end
