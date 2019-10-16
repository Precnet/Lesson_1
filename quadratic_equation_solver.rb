COEFFICIENTS_NAMES = %w(a b c)

def get_coefficient(coefficient)
  print "Enter coefficient #{coefficient}: "
  return gets.chomp.to_f
end

def calculate_discriminant(equation_data)
  return equation_data["b"]**2 - 4 * equation_data["a"] * equation_data["c"]
end

equation_data = Hash.new
COEFFICIENTS_NAMES.each {|coefficient| equation_data[coefficient] = get_coefficient(coefficient)}

print "#{equation_data["a"]}x**2 + #{equation_data["b"]}x + #{equation_data["c"]}"
