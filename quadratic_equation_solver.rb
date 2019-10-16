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
  # method doing more than one thing, but I`m kinda tired to rewrite it right now
  discriminant = calculate_discriminant(equation).to_f
  a = equation["a"]
  b = equation["b"]
  c = equation["c"]
  case
  when discriminant > 0
    x_1 = calculate_root(a, b, Math.sqrt(discriminant))
    x_2 = calculate_root(a, b, -Math.sqrt(discriminant))
    return "Discriminant is #{discriminant}. X1 is #{x_1}, X2 is #{x_2}"
  when discriminant == 0
    x = calculate_root(a, b, discriminant)
    return "Discriminant is #{discriminant}. X1 = X2 = #{x}"
  else
    return "Discriminant is #{discriminant}. There are no roots"
  end
end

def calculate_root(a, b, root_of_d)
  return (-b + root_of_d) / (2 * a)
end

equation_data = Hash.new
COEFFICIENTS_NAMES.each {|coefficient| equation_data[coefficient] = get_coefficient(coefficient)}
print_equation(equation_data)
print(calculate_roots(equation_data))
