require 'sinatra'

get '/' do
    "Hello World"
end

get '/marcador' do
  erb :marcador
end

