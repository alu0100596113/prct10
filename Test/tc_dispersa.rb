require 'lib/Matriz/dispersa.rb'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def setup
    @i = Matriz.new([[1,1,1],[1,1,1],[1,1,1]])
    @d3 = Matriz_Dispersa.new([[@f1,@c1,@c1],[@c1,@f2,@c1],[@c1,@c1,@f3]])
    @resu = Matriz.new([[1,5,0,4],[0,4,0,0],[3,0,3,0],[0,0,1,4]])
  end
  def test_simple
    assert_equal(@resu, @i+@d3)
  end
end