puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
age = age.to_f
puts "What year were you born?"
born = gets.chomp
born = born.to_f
calc_age = 2017.0-born
puts "Our company cafeteria serves garlic bread. Should we order you some?(y/n)"
garlic = gets.chomp
puts "Would you like to enroll in the company\'s health insurance?(y/n)"
insurance = gets.chomp
is_vampire = "Results inconclusive."
age_right = age == calc_age
like_garlic = garlic == "y"