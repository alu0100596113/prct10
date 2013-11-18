require './lib/Matriz/matriz.rb'

class Matriz_Dispersa < Matriz

    attr_reader :matriz

    def initialize(array=nil)
        if array != nil
            raise ArgumentError, 'No puede pasar un conjunto vacío' unless array.length > 0
            @matriz = Array.new
            array.length.times do |i|
                array[i].length.times do |j|
                    if(array[i][j] != (array[i][j]-array[i][j]))
                        self.matriz << [array[i][j],i,j]
                    end
                end
            end
        end
    end

    def +(other)
        result = Array.new
        other.matriz.length.times do |i|
            aux = Array.new
            other.matriz[i].length.times do |j|
                k = 0
                check = false
                while(k < self.matriz.length)
                    if(self.matriz[k][1] == i && self.matriz[k][2] == j)
                        aux << other.matriz[i][j] + self.matriz[k][0]
                        check = true
                    end
                    k += 1          
                end
                if(!check)
                    aux << other.matriz[i][j]
                end
            end
            result << aux
        end
        Matriz.new(result)
    end

    def -(other)
        result = Array.new
        other.matriz.length.times do |i|
            aux = Array.new
            other.matriz[i].length.times do |j|
                k = 0
                check = false
                while(k < self.matriz.length)
                    if(self.matriz[k][1] == i && self.matriz[k][2] == j)
                        aux << other.matriz[i][j] - self.matriz[k][0]
                        check = true
                    end
                    k += 1          
                end
                if(!check)
                    aux << other.matriz[i][j]
                end
            end
            result << aux
        end
        Matriz.new(result)
    end

    def to_s
        pr = ""
        self.matriz.length.times do |i|
            pr << "\t#{self.matriz[i][0]} | (#{self.matriz[i][1]},#{self.matriz[i][2]})\n"
        end
        pr << "\n"
        pr
    end

end

if __FILE__ == $0
    A = Matriz.new([[8,2],[3,4]])
    B = Matriz_Dispersa.new([[1,0],[0,0]])
    puts A
    puts B
    puts "SUMA"
    puts A+B
    puts "RESTA"
    puts A-B
end