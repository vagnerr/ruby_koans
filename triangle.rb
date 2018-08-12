# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # Safety checks
  if ( a<=0 || b<=0 || c<=0 )
    raise TriangleError, "Invalid length of side"
  end
  if ( a+b<=c || b+c<=a || a+c<=b )
    raise TriangleError, "Impossible triangle"
  end
  if a==b
    if b==c
      return :equilateral
    else
      return :isosceles
    end
  else
    if b==c
      return :isosceles
    elsif a==c
      return :isosceles
    else
      return :scalene
    end
  end

  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
