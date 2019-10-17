# Calculate area of triangle by its base and height
# Ask user for input
# Return area

def get_triangle_base
  print 'Please, enter triangle base:'
  gets.chomp.to_i
end

def get_triangle_height
  print 'Please, enter triangle height: '
  gets.chomp.to_i
end

def calculate_triangle_area(base, height)
  0.5 * base * height
end

puts "Area of this triangle equals #{calculate_triangle_area(get_triangle_base, get_triangle_height)}"
