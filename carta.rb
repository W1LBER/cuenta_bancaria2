class Carta
    attr_reader :numero, :pinta
    attr_writer :carta
    def initialize()
      @@numero = (1..13).to_a.map(&:to_s)
	@@pinta= ['C', 'D', 'E', 'T']
	@@carta= Array.new()
    end
end



