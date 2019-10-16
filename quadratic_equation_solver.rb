COEFFICIENTS_NAMES = %w(a b c)

def get_coefficient(coefficient)
  print "Enter coefficient #{coefficient}: "
  return gets.chomp.to_f
end

def print_equation(equation_data)
  puts "\nYour equation is:"
  a = equation_data["a"]
  b = equation_data["b"]
  c = equation_data["c"]
  puts "#{a}x**2 #{get_number_readable_form(b)}x #{get_number_readable_form(c)}"
end

def get_number_readable_form(number)
  return number > 0 ? "+ #{number}" : "- #{number * -1}"
end

def calculate_discriminant(equation_data)
  return equation_data["b"]**2 - 4 * equation_data["a"] * equation_data["c"]
end

def calculate_roots(equation)
  equation_discriminant = calculate_discriminant(equation)
  a = equation_data["a"]
  b = equation_data["b"]
  c = equation_data["c"]
  case
  when discriminant > 0

  when discriminant == 0

  else

  end
end

def calculate

equation_data = Hash.new
COEFFICIENTS_NAMES.each {|coefficient| equation_data[coefficient] = get_coefficient(coefficient)}
print_equation(equation_data)
