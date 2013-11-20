require './lib/Matriz/dispersa.rb'
require './lib/Matriz/racional.rb'
require "./lib/Matriz/matriz.rb"

describe Matriz_Dispersa do
        before :each do
                @m1 = Matriz.new([[1,2],[3,4]])
                @m2 = Matriz.new([[1,2,5],[3,4,5]])
                @f1 = Fraccion.new(1,2)
                @f2 = Fraccion.new(1,3)
                @f3 = Fraccion.new(1,4)
                @f4 = Fraccion.new(1,5)
                @f5 = Fraccion.new(2,3)
                @f6 = Fraccion.new(3,4)
                @f7 = Fraccion.new(4,5)
		@c1 = Fraccion.new(0,3)
                @m3 = Matriz.new([[@f1,@f1],[@f1,@f1]])
                @m4 = Matriz.new([[@f1,@f2],[@f3,@f4]])
                @m5 = Matriz.new([[@f1,@f5],[@f6,@f7]])
		@d1 = Matriz_Dispersa.new([[1,0,0,0],[0,2,0,0],[0,0,3,0],[0,0,0,4]])		
		@d2 = Matriz_Dispersa.new([[0,5,0,4],[0,2,0,0],[3,0,0,0],[0,0,1,0]])
		@i = Matriz.new([[1,1,1],[1,1,1],[1,1,1]])
		@d3 = Matriz_Dispersa.new([[@f1,@c1,@c1],[@c1,@f2,@c1],[@c1,@c1,@f3]])


        end
        describe "#ALMACENAMIENTO DE FRACCIONES EN MATRICES" do
                it "Se almacena correctamente" do
                        @m4.eq(Matriz.new([[@f1,@f2],[@f3,@f4]])).should eq(true)
                end
        end
        describe "#OPERACIONES ARITMETICAS CON FRACCIONES EN MATRICES" do
                it "SUMA DE @M4 CON @M5" do
                        m = @m4+@m5
                        f = Fraccion.new(1,1)
                        m.eq(Matriz.new([[f,f],[f,f]])).should eq(true)
                end
                it "RESTA DE @M3 CON @M3" do
                        m = @m3-@m3
                        f = Fraccion.new(0,1)
                        m.eq(Matriz.new([[f,f],[f,f]])).should eq(true)
                end
                it "PRODUCTO DE @M4 CON @M5" do
                        m = @m4*@m5
                        f1 = Fraccion.new(1,2)
                        f2 = Fraccion.new(3,5)
                        f3 = Fraccion.new(11,40)
                        f4 = Fraccion.new(49,150)
                        m.eq(Matriz.new([[f1,f2],[f3,f4]])).should eq(true)
                end
        end
       	describe "#OPERACIONES ENTRE MATRICES DISPERSAS" do
		it "SUMA DE @D1 Y D2" do
			r = @d1+@d2
			r.eq(Matriz.new([[1,5,0,4],[0,4,0,0],[3,0,3,0],[0,0,1,4]])).should  eq(true)
		end
		it "RESTA DE @D1 Y @D2" do
			r = @d1-@d2
			r.eq(Matriz.new([[1,-5,0,-4],[0,0,0,0],[-3,0,3,0],[0,0,-1,4]])).should  eq(true)
		end
		it "MULTIPLICACION @D1 y @D2" do
			r = @d1*@d2
			r.eq(Matriz.new([[0,5,0,4],[0,4,0,0],[9,0,0,0],[0,0,4,0]])).should eq(true)
			
		end
	end
	describe "#OPERACIONES ENTRE MATRICES DISPERSAS Y DENSAS" do
		it "SUMA @I + @D3" do
			r = @i+@d3
			f1 = Fraccion.new(3,2)
			f2 = Fraccion.new(4,3)
			f3 = Fraccion.new(5,4)
			f4 = Fraccion.new(1,1)
			r.eq(Matriz.new([[f1,f4,f4],[f4,f2,f4],[f4,f4,f3]])).should eq(true)
		end
		it "RESTA @I - @D3" do
			r = @i-@d3
			f1 = Fraccion.new(-1,2)
			f2 = Fraccion.new(-2,3)
			f3 = Fraccion.new(-3,4)
			f4 = Fraccion.new(-1,1)
			r.eq(Matriz.new([[f1,f4,f4],[f4,f2,f4],[f4,f4,f3]])).should eq(true)	  
		end
		it "MULTIPLICACION @I*@D3" do
		  
		end
	end


end
