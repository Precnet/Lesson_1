# Program requests user`s name and height
# Program prints user`s ideal weight computed by expression 'height - 110' by name
# If ideal weight is less then zero, tell user his weight is already optimal

print "Please, enter your name: "
user_name = gets().chomp

if !user_name.match(/^[[:alpha:][:blank:]]+$/)
  print "Probably you enter a wrong name. Would you like to enter new name?(y/n) "
  wrong_name_alert_reply = gets().chomp
end
