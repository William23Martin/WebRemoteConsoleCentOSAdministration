#Cola de manejo de comandos
#Declaracion de la clase
class Cola
  
#Definición de variables
 attr_accessor :cantidadComandos, :primero, :ultimo

#Método inicializador de la cola de manejo de eventos
 def initialize()
  @cantidadComandos=0
  @primero
  @ultimo
  puts 'Cantidad de comandos inicial:'+cantidadComandos.to_s
 end

 def getCantidadComandos()
  return cantidadComandos.to_i
 end

 def noHayElementos()
  puts 'Entra al método no hay elementos'
  if getCantidadComandos()==0
   puts 'La cantidad de comandos es igual a cero, entonces retorna true'
   return true
  else
   puts 'La cantidad de comandos no es igual a cero, entonces retorna false'
   return false
  end
 end
#line 30
#Método de agregar Comandos
 def encolar(comandoNuevo)
   puts 'Entré al método encolar'
   if noHayElementos()
      puts 'No hay comandos...'
      @primero=NodoCola.new(comandoNuevo)
      puts 'Primero:'+ primero.to_s
      @ultimo=primero
      puts 'El último:'+ ultimo.to_s
      @cantidadComandos=cantidadComandos.to_i+1
      puts 'Cantidad de comandos actual:'+ cantidadComandos.to_s
   else
      nodoNuevo=NodoCola.new(comandoNuevo)
      @ultimo.setSiguiente(nodoNuevo)
      puts 'El siguiente al ultimo es: '+ ultimo.getSiguiente().getComando().to_s
      @ultimo=nodoNuevo
      puts 'El ultimo es: '+ ultimo.getComando()
      @cantidadComandos=cantidadComandos.to_i+1
      puts 'Cantidad de comandos actual:'+cantidadComandos.to_s
   end 
   puts 'Se ha agregado un nuevo comando:'+ultimo.to_s
 end

#Método de desencolar comandos
 def desencolar()
  nodoDesencolado=primero
  puts 'Primero que se va a desencolar:'+primero.to_s
  puts 'Ultimo de la cola:'+ ultimo.to_s
  puts 'NodoDesencolado:'+nodoDesencolado.to_s 
  if cantidadComandos == 1
    puts 'la cantidad de comandos es igual a 1' 
    @primero=nil
    @ultimo=nil
    puts 'No hay más comandos en cola'
  else
    puts 'Hay más de un comando en la cola'
    @primero=primero.getSiguiente()
    puts 'El primer comando es:' + primero.to_s
  end
  @cantidadComandos=cantidadComandos.to_i-1
  puts 'Cantidad de comandos actual:'+cantidadComandos.to_s
  return nodoDesencolado.getComando()
 end

end

#------------------------------------------------------------------
#Clase nodo cola
class NodoCola
  
  #Definición de variables
  attr_accessor :comando, :siguiente
 
  def initialize(comandoS)
   @comando=comandoS.to_s
   @siguiente
 end
 
 def getComando()
   return @comando.to_s
 end
 
 def setComando(comandoS)
   @comando=comandoS.to_s
 end
    
 def getSiguiente()
   puts 'El siguiente es: '+@siguiente.to_s
   return @siguiente
 end

 def setSiguiente(nodoSiguiente)
   @siguiente=nodoSiguiente
 end

 def to_s
  return  comando.to_s
 end
end    
