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

def get_amount_of_equation_roots(discriminant)
  case
  when discriminant > 0
    2
  when discriminant == 0
    1
  else
    0
  end
end

equation_data = Hash.new
COEFFICIENTS_NAMES.each {|coefficient| equation_data[coefficient] = get_coefficient(coefficient)}
print_equation(equation_data)

equation_discriminant = calculate_discriminant(equation_data)
num_of_equation_roots = get_amount_of_equation_roots(equation_discriminant)
