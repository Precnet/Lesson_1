# Program requests user`s name and height
# Program prints user`s ideal weight computed by expression 'height - 110' by name
# If ideal weight is less then zero, tell user his weight is already optimal

WEIGHT_CALCULATION_PENALTY = 110

def get_user_name
  print "Please, enter your name: "
   return gets().chomp
end

def get_user_weight
  print "Enter your current weight: "
  return gets().chomp
end

def calculate_ideal_weight(current_weight)
  ideal_weight = Integer(current_weight) - WEIGHT_CALCULATION_PENALTY
end

def print_uset_ideal_weight()

user_name = get_user_name
user_weight = get_user_weight
user_optimal_weight = calculate_ideal_weight(user_weight)

