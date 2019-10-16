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
  return current_weight.to_i - WEIGHT_CALCULATION_PENALTY
end

def generate_reply_message(user_name, calculated_weight)
  if calculated_weight > 0
end

user_name = get_user_name
user_weight = get_user_weight
calculate_optimal_weight = calculate_ideal_weight(user_weight)