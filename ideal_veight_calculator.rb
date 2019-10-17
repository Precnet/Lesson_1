# Program requests user`s name and height
# Program prints user`s ideal weight computed by expression 'height - 110' by name
# If ideal weight is less then zero, tell user his weight is already optimal

WEIGHT_CALCULATION_PENALTY = 110

def get_user_name
  print 'Please, enter your name: '
  gets.chomp
end

def get_user_height
  print 'Enter your current height: '
  gets.chomp
end

def calculate_ideal_weight(current_height)
  current_height.to_i - WEIGHT_CALCULATION_PENALTY
end

def generate_reply_message(user_name, calculated_weight)
  if calculated_weight > 0
    output_message = '#{user_name}, your optimal weight is #{calculated_weight}.'
  else
    output_message = '#{user_name}, your have no excess weight.'
  end
  output_message
end

user_name = get_user_name
user_height = get_user_height
calculate_optimal_weight = calculate_ideal_weight(user_height)
print generate_reply_message(user_name, calculate_optimal_weight)
