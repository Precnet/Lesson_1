COEFFICIENTS_NAMES = %w(a b c)

def get_coefficient(coefficient)
  print "Enter coefficietn #{coefficient}: "
  return gets.chomp.to_f
end

equation_data = Hash.new
COEFFICIENTS_NAMES.each {|coefficient| equation_data[coefficient] = get_coefficient(coefficient)}
