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
  begin
    if invalid_triangle?(a,b,c)
      raise TriangleError, "Invalid Triangle" 
    end
    return :equilateral if a == b && b == c
    return :isosceles if (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
    :scalene 
  end
end

def invalid_triangle?(a, b, c)
  return true if (a < 0 || b < 0 || c < 0)
  return true if (a * b * c == 0)
  return true if(a + b <= c) || (b + c <= a) || (a + c <= b)
  false
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
