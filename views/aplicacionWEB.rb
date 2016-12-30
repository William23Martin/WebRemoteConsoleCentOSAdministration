require 'rubygems'
require 'sinatra'
require 'json'

get '/miConsola' do 
  'Aplicacion para manejar comandos desde internet'
  @mensajeMostrar='Mensaje a mostrar'
  erb :miConsola

end

post '/miConsola/' do
   'Aplicacion para manejar comandos desde internet'
   @mensajeMostrar=params[:comandoNuevo]
   erb :miConsola
end

