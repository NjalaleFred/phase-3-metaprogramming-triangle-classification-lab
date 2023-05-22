class Triangle

  def initialize(base,height,hypotenuse)
    @base = base
    @height = height
    @hypotenuse = hypotenuse
    validate_triangle
  end

  def kind
    if @base == @height && @base == @hypotenuse
      :equilateral
    elsif @base == @height || @base == @hypotenuse || @height == @hypotenuse
      :isosceles
    else 
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end

  private
  def validate_triangle
    if @base == 0 && @height == 0 && @hypotenuse == 0
      raise TriangleError
    elsif @base < 0 || @height < 0 || @hypotenuse < 0
      raise TriangleError
    elsif @base + @height <= @hypotenuse || @base + @hypotenuse <= @height || @height + @hypotenuse <= @base
      raise TriangleError
    end
  end
  
end
