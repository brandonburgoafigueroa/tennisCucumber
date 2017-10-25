require 'sinatra'

get '/' do
    "Hello World"
end

get '/marcador' do
    @PuntosA=0
    @PuntosB=0
  erb :marcador
end

post '/marcador' do
    @PuntosA=5
    @PuntosB=0
    erb :marcador
  end
