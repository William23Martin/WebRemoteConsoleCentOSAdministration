require 'rubygems'
require 'sinatra'
require 'json'
require './capturadoraDeComandos.rb'


get '/miConsola' do 
  'Aplicacion para manejar comandos desde internet'
  @mensajeMostrar='Mensaje a mostrar'
  erb :miConsola

end

post '/miConsola/' do
   'Aplicacion para manejar comandos desde internet'
   @control=Control.new
   @comandoNuevo=params[:comandoNuevo]
   @control.setComando(@comandoNuevo)
   @control.capturarComando()
   @control.ejecutar()
   @mensajeMostrar=@control.darRespuestaConsola()
   erb :miConsola
end

