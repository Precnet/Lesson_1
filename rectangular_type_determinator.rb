# Program asks for three sides of a triangle and output its type

TRIANGLE_SIDES = %w(first second third)

def get_triangle_side(side_number)
  print "Please, enter #{side_number} side of a triangle: "
  return gets.chomp.to_f
end

def is_triangle_equilateral?(triangle)
  return triangle.values.uniq.length == 1
end

def is_triangle_isosceles?(triangle)
  return triangle.values.uniq.length <= 2
end

def is_triangle_right?(triangle)
  hypotenuse = get_hypotenuse(triangle)
  # I`m not glad with this solution because of changing original Hash, but it`s working
  # obvious candidate for refactoring
  triangle.delete(triangle.key(hypotenuse))
  sum_of_squared_legs = triangle.values.sum{|leg| leg**2}
  return hypotenuse == Math.sqrt(sum_of_squared_legs)
end

def get_hypotenuse(triangle_sides)
  return triangle_sides.values.max
end

triangle_data = Hash.new
TRIANGLE_SIDES.each {|side| triangle_data[side] = get_triangle_side(side)}

puts "Triangle is equilateral." if is_triangle_equilateral?(triangle_data)
puts "Triangle is isosceles." if is_triangle_isosceles?(triangle_data)
puts "Triangle is right." if is_triangle_right?(triangle_data)
