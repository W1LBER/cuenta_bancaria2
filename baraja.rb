require_relative 'carta'

class Baraja < Carta 
  attr_accessor :baraja
    def initialize() 
      super
      @@pinta.each do |index|
	@@numero.each do |i|
	  a = index + i
	  @@carta.push(a)
	end
      end
    end

    def barajar()
      @@carta = @@carta.shuffle
    end

    def sacar
      @@carta.pop
    end

    def repartir_mano
     print @@carta[0..4]
    end

end

a = Baraja.new()

a.barajar

puts a.sacar

puts a.repartir_mano
