class Triangle
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x, @y, @z > 0 && (@x == @y && @x == @z)
      triangle = :equilateral
    elsif @x == @y || @x == @z || @y == @z
      triangle = :isosceles
    elsif
      @x != @y && @x != @z
      triangle = :scalene
    elsif
      @x || @y || @z == 0
      raise TriangleError
    end
  end
end

  class TriangleError < StandardError

end
