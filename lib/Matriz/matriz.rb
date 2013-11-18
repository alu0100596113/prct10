#Definicion de la clase matriz:

require './lib/Matriz/racional.rb'

class Matriz

    attr_reader :matriz
    
    def initialize(array=nil)
        if array != nil
            raise ArgumentError, 'No puede pasar un conjunto vacío' unless array.length > 0
            @matriz = array
        end
    end

    def +(other)
        if(other.is_a?Matriz)
            result = Array.new
            self.matriz.length.times do |i|
                aux = Array.new
                self.matriz[i].length.times do |j|
                    aux << self.matriz[i][j] + other.matriz[i][j]
                end
                result << aux
            end
            Matriz.new(result)
        end
    end

    def -(other)
        if(other.is_a?Matriz)
            result = Array.new
            self.matriz.length.times do |i|
                aux = Array.new
                self.matriz[i].length.times do |j|
                    aux << self.matriz[i][j] - other.matriz[i][j]
                end
                result << aux
            end
            Matriz.new(result)
        end
    end

    def *(other)
        if(other.is_a?Matriz)
            if(self.matriz.length != other.matriz[0].length)
                raise ArgumentError, 'Numero de filas de A tiene que ser igual al numero de columnas de B'
            elsif       
                result = Array.new
                self.matriz.length.times do |i|
                    aux = Array.new
                    other.matriz.length.times do |j|
                        partial = self.matriz[i][j] - self.matriz[i][j]
                        self.matriz[i].length.times do |k|
                            partial += self.matriz[i][k] * other.matriz[k][j]
                        end
                        aux << partial
                    end
                    result << aux
                end
                Matriz.new(result)
            end
        end
    end
    
    def to_s
        pr = ""
        self.matriz.length.times do |i|
            pr << "\t"
            self.matriz[i].length.times do |j|
                    pr << "#{self.matriz[i][j]} "
            end
            pr << "\n"
        end
        pr << "\n"
        pr
    end
end

if __FILE__ == $0
    F0 = Fraccion.new(1,2)
    F1 = Fraccion.new(3,7)
    F2 = Fraccion.new(1,2)
    F3 = Fraccion.new(3,7)
    A = Matriz.new([[F0,F1],[F2,F3]])
    B = Matriz.new([[F0,F1],[F2,F3]])
    puts A
    puts B
    puts "SUMA"
    puts A+B
    puts "RESTA"
    puts A-B
    puts "PRODUCTO"
    puts A*B
end