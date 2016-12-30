require './TADCola.rb'
require 'json'
@cola=Cola.new

def capturarComando(comando)
 if comando==''
 else
  @cola.encolar(comando)
 end
end

while true 
  STDOUT.flush
  comando=gets.chomp  
  capturarComando(comando)
  puts 'Comando caprutado: '+ comando.to_s
  puts 'Comando que se va a ejecutar en consola...'
  system(comando)
  objetoJson={:propiedad=>"valor"}
  puts JSON.pretty_generate(objetoJson)
end
