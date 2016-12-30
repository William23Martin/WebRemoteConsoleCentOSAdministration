#!/usr/bin/ruby
require './TADCola.rb'
require 'json'
require 'io/console'
@respuestaConsola

@cola=Cola.new
@comando
def capturarComando()
 @comando=gets.chomp
 if @comando==''
  capturarComando()
 else
  @cola.encolar(@comando)
  puts 'Se guardó correctamente el comando:'+@comando.to_s
 end
end

def consultarComando()
  if @cola.noHayElementos()
  puts 'No hay elementos'
  return 'No hay elementos'
 else
  @comandoConsultado=@cola.desencolar()
  @objetoJson={:comandoEnviar=>"#{@comandoConsultado}"}
 end
 puts 'Comando consultado:'+@objetoJson.to_s
 return @objetoJson
end
#Line 20
def ejecutar() 
  STDOUT.flush
  puts 'Comando que se va a ejecutar en consola...'
  if @cola.noHayElementos()
   puts 'No hay elementos por ejecutar'
  else
   @comando=@cola.desencolar()
   system(@comando)
   @respuestaConsola=%x{#{@comando}}
   puts 'Lo que se mostró en consola fue:'
   puts @respuestaConsola.to_s
  end
end

def darRespuestaConsola()
 return @respuestaConsola.to_s
end

def hayComandosPendientesPorEjecutar()
 return @cola.noHayElementos()
end

while true
 @action=gets.chomp
 if @action=='ejecutar'
  ejecutar()
 else
  if @action=='consultar'
   puts consultarComando()
  else
   if @action=='guardar' 
    capturarComando()
   else
    if @action=='revisar'
     hayComandosPendientesPorEjecutar()
    end
   end
  end
 end
end



