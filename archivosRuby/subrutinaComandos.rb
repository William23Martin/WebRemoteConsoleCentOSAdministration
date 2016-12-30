require 'rubygems'
require 'sinatra'
load 'TADCola.rb'

comando1='Comando1'
comando2='Comando2'

cola=Cola.new
cola.inicializarCola
cola.encolar(comando1)
cola.encolar(comando2)

puts cola.desencolar
puts cola.desencolar


