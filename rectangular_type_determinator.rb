# Program asks for three sides of a triangle and output its type

TRIANGLE_SIDES = %w(first second third)

def get_triangle_side(side_number)
  print "Please, enter #{side_number} side of a triangle: "
  return gets.chomp.to_f
end

triangle_data = Hash.new
TRIANGLE_SIDES.each {|side| triangle_data[side] = get_triangle_side(side)}
