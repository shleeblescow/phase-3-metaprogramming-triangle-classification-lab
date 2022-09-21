class Triangle
  # triangle code

  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == 0 && b == 0 && c == 0
      "triangle error no size"
      raise TriangleError
    elsif a < 0 || b < 0 || c < 0
      "triangel error negative sides"
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      "triangle error violates triangle inequality"
      raise TriangleError
    end

    if a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end